import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Bypass Gástrico", "Manga Gástrica", "Cirugía Metabólica"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };


