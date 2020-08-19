import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Japan with Laura, Windy and Mark", "the West Coast with Bruno, Elodie and Lamiaa", "Paris with Dimitri, Julien and Edouard", "New York with Stephania, Chris and José"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
