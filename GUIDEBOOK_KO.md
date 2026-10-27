# Neovim 사용자 가이드

어디서든 `:GuidebookKo` 명령으로 이 가이드를 새 탭에서 열 수 있습니다. 영어 가이드는 `:Guidebook`으로 엽니다.

리더 키(leader key)는 **Space**입니다. 예를 들어 `<leader>e`는 Space를 누른 다음 `e`를 누르는 뜻입니다.

## 키맵

| 키 | 기능 |
| --- | --- |
| `<leader>ff` | fzf-lua로 파일 찾기 |
| `<leader>fg` | fzf-lua로 파일 내용 검색 |
| `<leader>fb` | 열린 버퍼 찾기 |
| `<leader>e` | Neo-tree 열기/닫기 |
| `<leader>xx` | Trouble 진단 창 열기/닫기 |
| `<leader>nh` | 알림 기록 보기 |
| `<leader>nc` | 알림 기록 지우기 |
| `<leader>m` | 현재 버퍼의 Markdown 렌더링 전환 |

## Markdown 및 LaTeX

- `markview.nvim`은 Markdown과 일반적인 LaTeX 수식을 편집 화면 안에서 렌더링합니다. `<leader>m` 또는 `:Markview toggle`로 현재 버퍼의 렌더링을 켜거나 끕니다.
- `:Markview splitOpen`은 별도 미리보기 창을 열고, `:Markview splitClose`는 닫습니다.
- LaTeX 수식은 Neovim 텍스트 기호로 표시됩니다. PDF나 브라우저처럼 완전히 조판된 수식은 아닙니다.

## 자동 완성

- 입력 모드에서 Blink가 자동 완성 후보를 표시합니다. `Tab`을 누르면 첫 번째 후보를 선택하고, 다시 누르면 다음 후보로 이동합니다. 선택한 후보는 미리 입력된 형태로 표시됩니다.
- `Space`를 누르면 선택한 후보를 적용하고 뒤에 공백을 입력합니다. 위/아래 화살표로도 후보를 선택할 수 있습니다. `Ctrl-y`는 공백 없이 후보를 적용하고, `Ctrl-e`는 후보 목록을 닫습니다. `Ctrl-Space`로 후보 목록을 열 수 있습니다.
- 명령줄에서 `:`를 입력한 뒤 위/아래 화살표로 명령 후보를 고를 수 있습니다. Enter로 선택한 명령을 실행합니다. `/`와 `?`에서는 현재 버퍼의 텍스트를 추천합니다.
- `friendly-snippets`는 Blink에서 사용할 수 있는 스니펫 모음입니다.

## Neo-tree 파일 탐색기

`<leader>e` 또는 `:Neotree toggle`로 엽니다. 파일 트리로 이동하려면 `Ctrl-w h`, 파일 창으로 이동하려면 `Ctrl-w l`을 누릅니다.

| 키 | 기능 |
| --- | --- |
| `Enter` | 파일 열기 또는 디렉터리 펼치기/접기 |
| `Backspace` | 상위 디렉터리로 이동 |
| `H` | 숨김 파일 표시 전환 |
| `a` | 파일 또는 디렉터리 추가. 디렉터리는 이름 끝에 `/` 입력 |
| `d` | 선택한 파일 또는 디렉터리 삭제 |
| `T` | 선택한 항목을 휴지통으로 이동 |
| `u` | 휴지통 작업 취소 |
| `r` | 이름 변경 |
| `?` | Neo-tree 키 도움말 보기 |

## fzf-lua

위 키맵이나 다음 명령을 사용할 수 있습니다.

- `:Fzf searchf` — 파일 찾기
- `:Fzf searchtxt` — 파일 내용 검색
- `:Fzf buffers` — 버퍼 찾기

일반적인 파일 및 텍스트 검색에는 fzf-lua를 사용합니다. Telescope는 PDFreader의 의존성으로만 설치되어 있습니다.

## PDF 보기

Neovim을 Kitty 또는 Ghostty 터미널에서 실행하면 PDFreader가 원본 PDF 페이지를 렌더링합니다.

- `:edit /경로/파일.pdf`로 PDF를 엽니다.
- `n` / `p`: 다음/이전 페이지
- `z` / `q`: 확대/축소, `e`: 확대 상태 초기화
- `:PDFReader setViewMode standard`, `dark`, `text`: 보기 모드 변경
- `:PDFReader setPage 3`: 3페이지로 이동
- `:PDFReader showToc`: 목차 보기
- `:PDFReader showBookmarks`: 책갈피 보기
- `:PDFReader showRecentBooks`: 최근 PDF 목록 열기

Apple Terminal은 PDFreader의 이미지 렌더링을 지원하지 않습니다. 렌더링된 페이지를 보려면 Ghostty 또는 Kitty를 사용하세요. PDF 처리를 위해 Poppler, ImageMagick, Ghostscript가 설치되어 있습니다.

## 설치된 플러그인

| 플러그인 | 기능 |
| --- | --- |
| `blink.cmp` | 입력 및 명령줄 자동 완성 |
| `friendly-snippets` | Blink에서 사용하는 코드 스니펫 |
| `nvim-treesitter` | 설치된 파서 기반의 구문 분석 및 하이라이트 |
| `markview.nvim` | LaTeX 수식을 포함한 인라인 Markdown 미리보기 |
| `nvim-lspconfig` | 언어 서버 설정 지원 |
| `mason.nvim` | 언어 서버 및 개발 도구 설치. `:Mason`으로 열기 |
| `mason-lspconfig.nvim` | Mason의 서버와 Neovim LSP 연결 |
| `neo-tree.nvim` | 파일 트리 |
| `fzf-lua` | 파일, 텍스트, 버퍼 검색 |
| `telescope.nvim` | PDFreader가 사용하는 검색기 의존성 |
| `pdfreader.nvim` | Kitty 또는 Ghostty에서 PDF 페이지 렌더링 |
| `trouble.nvim` | 진단 및 목록 보기 |
| `obsidian.nvim` | 현재 열려 있는 볼트와 Obsidian 연동 |
| `lualine.nvim` | 상태 표시줄 |
| `statuscol.nvim` | 줄 번호, 폴드, 표시 열 설정 |
| `nvim-notify` | 알림 표시 및 기록 |
| `molokai` | 색상 테마 |
| `nvim-web-devicons` | 파일 아이콘 |
| `plenary.nvim`, `nui.nvim`, `snacks.nvim` | 여러 플러그인이 공유하는 라이브러리 및 이미지 지원 |
| `lazy.nvim` | 플러그인 관리자 |

현재 설정에는 선택된 언어 서버가 없습니다. 필요한 서버는 `:Mason`에서 설치할 수 있습니다.

## Neovim 기본 사용법

### 파일, 버퍼, 탭

- `:edit 경로/파일`로 파일을 엽니다.
- `:ls`는 버퍼 목록, `:bnext`와 `:bprevious`는 다음/이전 버퍼, `:buffer 3`은 3번 버퍼, `:bdelete`는 현재 버퍼를 닫습니다.
- `:vsplit 경로/파일`은 세로 분할, `:split 경로/파일`은 가로 분할로 엽니다.
- `Ctrl-w h/j/k/l`로 창 사이를 이동하고, `Ctrl-w c`로 현재 분할 창을 닫습니다. `:only`는 현재 창만 남깁니다.
- `:tabnew`는 새 탭을 열고, `gt`와 `gT`는 탭 사이를 이동하며, `:tabclose`는 현재 탭을 닫습니다.

### 편집 및 검색

- `:write` 또는 `:w`는 저장, `:quit` 또는 `:q`는 종료, `:wq`는 저장 후 종료, `:q!`는 저장하지 않고 종료합니다.
- `u`는 실행 취소, `Ctrl-r`은 다시 실행입니다.
- `/단어`는 아래 방향 검색, `?단어`는 위 방향 검색입니다. `n`과 `N`으로 검색 결과 사이를 이동합니다.
- `:help 명령`은 Neovim 도움말을 열고, `:checkhealth`는 환경 상태를 확인합니다.
