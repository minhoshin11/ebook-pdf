## 교보문고 전자도서관 Ebook 캡처 스크립트 for MacOS

아이패드에서 필기하면서 보기 위해 스크립트를 만들었습니다.

캡처해서 혼자 보는 것은 상관 없지만 공유는 불법이니 참고바랍니다.

### How to Start?

```

1. 교보문고 전자도서관(app store)에서 캡처하고 싶은 책으로 이동합니다.
2. run-script.sh를 실행합니다.
3. folder에 저장된 png 파일을 pdf로 변환합니다.

```

순서는 아래와 같습니다.

해당 폴더로 들어가고 이 명령어를 친다.
./run-script.sh

입력해야 할것이 나온다. 1.책 이름 2.페이지길이
3.xywh ( 32인치 반으로 가른 기준 : 150 52 1000 1270 )

4.교보 도서관이냐 교보ebook이냐

brew install imagemagick
brew install cliclick
brew install img2pdf

풀어준 권한들
설정 - 개인정보 보호 및 보안 -
손쉬운 사용 - vscode
입력 모니터링 - 터미널
파일 및 폴더 - 터미널 ,vscode
