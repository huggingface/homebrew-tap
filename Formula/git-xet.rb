class GitXet < Formula
    desc "Git-Xet is a Git-LFS plugin that implements upload and download of files using the Xet protocol."
    homepage "https://github.com/huggingface/xet-core/tree/main/git_xet"
    version "0.1.0"

    on_macos do
        on_intel do
            url "https://github.com/huggingface/xet-core/releases/download/git-xet-v0.1.0/git-xet-macos-x86_64.zip"
            sha256 "7c264327b529746a69cf51c62f475b9d9f5b29412ff4aa292caddde3e71f55be"
        end

        on_arm do
            url "https://github.com/huggingface/xet-core/releases/download/git-xet-v0.1.0/git-xet-macos-aarch64.zip"
            sha256 "a1b1f7c5d233fc1fa24c57ee36195982f1dfe9bb1f500e4fb64f7f8c82140a6d"
        end
    end

    on_linux do
        on_intel do
            if Hardware::CPU.is_64_bit?
                url "https://github.com/huggingface/xet-core/releases/download/git-xet-v0.1.0/git-xet-linux-x86_64.zip"
                sha256 "74e73535fa999d966198fe3581b61f694326e79a73e981808438982d02bbdb35"
            end
        end

        on_arm do
            if Hardware::CPU.is_64_bit?
                url "https://github.com/huggingface/xet-core/releases/download/git-xet-v0.1.0/git-xet-linux-aarch64.zip"
                sha256 "457c6acf25802c9e493d1d9a53edb477cf5e7542590fe3587c947fc884ad4fca"
            end
        end
    end

    def install
        bin.install "git-xet"
    end

    def caveats
        <<~EOS
        Update your git config to finish installation:

            # Update global git config
            $ git xet install

            # Update system git config
            $ git xet install --system
        EOS
    end
end