import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
 $('#review_rating').barrating({
    theme: 'bars-1to10'
  });
};

export { initStarRating };
