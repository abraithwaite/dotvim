update:
	git subtree pull --prefix bundle/commentary     https://github.com/tpope/vim-commentary.git master --squash
	git subtree pull --prefix bundle/ctrlp          https://github.com/kien/ctrlp.vim.git master --squash
	git subtree pull --prefix bundle/flake8         https://github.com/nvie/vim-flake8.git master --squash
	git subtree pull --prefix bundle/fugitive       https://github.com/tpope/vim-fugitive.git master --squash
	git subtree pull --prefix bundle/golang         https://github.com/fatih/vim-go.git master --squash
	git subtree pull --prefix bundle/nerdtree       https://github.com/scrooloose/nerdtree.git master --squash
	git subtree pull --prefix bundle/pathogen       https://github.com/tpope/vim-pathogen.git master --squash
	git subtree pull --prefix bundle/rust           https://github.com/rust-lang/rust.vim.git master --squash
	git subtree pull --prefix bundle/solarized      https://github.com/altercation/vim-colors-solarized.git master --squash
	git subtree pull --prefix bundle/surround       https://github.com/tpope/vim-surround master --squash
	git subtree pull --prefix bundle/terraform      https://github.com/hashivim/vim-terraform.git master --squash
	git subtree pull --prefix bundle/vim-abolish    https://github.com/tpope/vim-abolish.git master --squash
	git subtree pull --prefix bundle/vim-tsx        https://github.com/ianks/vim-tsx.git master --squash
	git subtree pull --prefix bundle/vim-typescript https://github.com/leafgarland/typescript-vim.git master --squash
