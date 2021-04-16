import { withPluginApi } from "discourse/lib/plugin-api";

function initializeSmallCaps(api) {
  // https://github.com/discourse/discourse/blob/master/app/assets/javascripts/discourse/app/lib/plugin-api.js

  api.onToolbarCreate(toolbar => {
    toolbar.addButton({
      id: "smallcaps_button",
      group: "fontStyles",
      icon: "font",
      perform: e => e.applySurround('[smallcaps]', '[/smallcaps]', 'smallcaps_default_text'),
      label: "small_caps.composer.smallcaps_label",
      title: "small_caps.composer.smallcaps_title"
    });
  });
}

export default {
  name: "small-caps",

  initialize() {
    withPluginApi("0.8.31", initializeSmallCaps);
  }
};
