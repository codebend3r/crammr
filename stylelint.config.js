export default {
  extends: ["stylelint-config-standard"],
  overrides: [
    {
      files: ["**/*.scss"],
      extends: ["stylelint-config-standard-scss"],
    },
    {
      // CSS module class names are camelCase so they read as identifiers at the
      // import site; global sheets are exempt because they carry third-party
      // names we don't own (`.hljs-*`).
      files: ["**/*.module.{css,scss}"],
      rules: {
        "selector-class-pattern": "^[a-z][a-zA-Z0-9]*$",
      },
    },
  ],
  rules: {
    "selector-class-pattern": null,
    // range syntax (`width <= 640px`) is newer than Vite's default build target
    // (Safari 14), so keep the prefixed `max-width` form
    "media-feature-range-notation": "prefix",
    // blank lines group the design tokens in `global.css` by kind
    "custom-property-empty-line-before": null,
    // the base/variant CSS module pattern (`.filter` + `.filterActive`) trips
    // this without an actual cascade conflict
    "no-descending-specificity": null,
  },
};
