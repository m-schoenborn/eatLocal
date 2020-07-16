const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.pages.home .navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

$(document).on('click', function (e){
  /* bootstrap collapse js adds "in" class to your collapsible element*/
  var menu_opened = $('#navbarSupportedContent').hasClass('show');

  if(!$(e.target).closest('#navbarSupportedContent').length &&
      !$(e.target).is('#navbarSupportedContent') &&
      menu_opened === true){
          $('#navbarSupportedContent').collapse('toggle');
  }
});
