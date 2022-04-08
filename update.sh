Project="Xhofe/alist"
DownloadFileName="alist-linux-amd64.tar.gz"
GithubReleaseAPI="https://api.github.com/repos/$Project/releases/latest"
GithubReleasePage="https://github.com/$Project/releases/latest"

# Downloading latest release
echo "Downloading latest release..."
tag=$(curl --silent $GithubReleasePage | sed 's#.*tag/\(.*\)".*#\1#')
echo $Project" latest version is: "$tag", downloading..."
wget https://github.com/Xhofe/alist/releases/download/$tag/$DownloadFileName
echo "Download finished, extracting..."
tar -xzf $DownloadFileName
echo "Extract finished, deleting..."
rm $DownloadFileName
echo "Delete finished."

# Deploy to fly
echo "Deploying to fly..."
fly deploy

# Uploading to github
echo "Pushing to github..."
git add alist-linux-amd64
git commit -m "Update alist to version "$tag
git push
