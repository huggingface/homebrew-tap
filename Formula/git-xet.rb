class GitXet < Formula
    desc "Git-Xet is a Git-LFS plugin that implements upload and download of files using the Xet protocol."
    homepage "https://github.com/huggingface/xet-core/tree/main/git_xet"
    version "0.2.0"

    depends_on "git-lfs"

    on_macos do
        on_intel do
            url "https://github.com/huggingface/xet-core/releases/download/git-xet-v0.2.0/git-xet-macos-x86_64.zip"
            sha256 "3bc49ac3d020f177f5cc9ff01447b55299ccba118589630c01310b620f82a468"
        end

        on_arm do
            url "https://github.com/huggingface/xet-core/releases/download/git-xet-v0.2.0/git-xet-macos-aarch64.zip"
            sha256 "098c851ef7c16475c90a33c70466a71ca1dedebca2225a6d7f5470e897a1b8e2"
        end
    end

    on_linux do
        on_intel do
            if Hardware::CPU.is_64_bit?
                url "https://github.com/huggingface/xet-core/releases/download/git-xet-v0.2.0/git-xet-linux-x86_64.zip"
                sha256 "80f1d822ec7bdff9652ab7843cda346d1e752b87f25109e4e04002ea08b81b0d"
            end
        end

        on_arm do
            if Hardware::CPU.is_64_bit?
                url "https://github.com/huggingface/xet-core/releases/download/git-xet-v0.2.0/git-xet-linux-aarch64.zip"
                sha256 "b8ff5ff6d2b112717220bdd637425a8199822358112b7cd0b268584b1e8fdb65"
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
