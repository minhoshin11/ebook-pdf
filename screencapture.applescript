on run argv
    set bookName to item 1 of argv
    set pageLength to item 2 of argv
    set pos_x to item 3 of argv
    set pos_y to item 4 of argv
    set pos_w to item 5 of argv
    set pos_h to item 6 of argv
    set application_name to item 7 of argv
    set dFolder to (POSIX path of (path to desktop as text)) & bookName & "/"
    set pos to pos_x & "," & pos_y & "," & pos_w & "," & pos_h

    -- 디렉토리 생성
    do shell script ("mkdir -p " & quoted form of dFolder)

    script FormattingHelper
        to formatNumberWithLeadingZeros(numberToFormat, totalLength)
            set formattedNumber to numberToFormat as string
            set currentLength to length of formattedNumber
            repeat until currentLength = totalLength
                set formattedNumber to "0" & formattedNumber
                set currentLength to length of formattedNumber
            end repeat
            return formattedNumber
        end formatNumberWithLeadingZeros
    end script

    set page to pageLength
    set i to 1
    repeat page times
        tell application application_name to activate -- Kyobo eBook 활성화
        tell application "System Events"
            delay 1.5
            set formattedNumber to formatNumberWithLeadingZeros(i, 5) of FormattingHelper
            -- 스크린샷 캡처
            do shell script ("screencapture -R " & pos & " " & quoted form of (dFolder & bookName & "-" & formattedNumber & ".png"))
            set i to i + 1
            -- 마우스 클릭으로 페이지 넘기기
            do shell script "cliclick c:1200,500" -- 여기를 넘기기 버튼의 좌표로 수정
        end tell
    end repeat    

    -- merge.sh 실행
    do shell script "bash /Users/shinminho/Desktop/ebook-script/merge.sh " & quoted form of bookName
end run
