echo "[nvim/packer] Installing plugins..."
nvim --headless --noplugin -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
echo "[nvim/packer] Installing plugins... finished!"
