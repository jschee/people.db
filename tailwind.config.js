module.exports = {
  theme: {
    fontFamily: {
      body: ['Inter', 'sans-serif']
    },
    extend: {
      transformOrigin: {
        "0": "0%",
      },
      zIndex: {
        "-1": "-1",
      },
    },
  },
  variants: { borderColor: ["responsive", "hover", "focus", "focus-within"] },
  plugins: [],
};
