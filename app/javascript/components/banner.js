function rotateBannerImages() {
  let bannerDiv = document.querySelector('.banner');
  if (bannerDiv) {
    let previousImg = bannerDiv.querySelector("[data-image-id='" + bannerDiv.dataset.imageId + "']");
    if (bannerDiv.dataset.imageId == '3') {
      bannerDiv.dataset.imageId = 1
    } else {
      bannerDiv.dataset.imageId = Number(bannerDiv.dataset.imageId ) + 1;
    }
    let nextImg = bannerDiv.querySelector("[data-image-id='" + bannerDiv.dataset.imageId + "']");
    previousImg.classList.toggle('transparent');
    nextImg.classList.toggle('transparent');
  }
}
export { rotateBannerImages };
