/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/**/*.{html,js,erb}"],
  theme: {
    extend: {
			backgroundImage: {
				'homepage': "url('homepage.jpg')"
			},
			height: {
        '112': '28rem',
      }
		},
  },
  plugins: [],
}
