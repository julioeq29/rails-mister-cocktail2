import Typed from 'typed.js';
  const text = document.getElementById('banner-typed-text');
  console.log(text)

const loadDynamicBannerText = () => {
  if (text) {
    new Typed('#banner-typed-text', {
      strings: ["Best cocktails in Le Wagon London! 🤟"],
      typeSpeed: 60,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
