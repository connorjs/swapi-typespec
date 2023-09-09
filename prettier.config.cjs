module.exports = {
	overrides: [{ files: "*.tsp", options: { parser: "typespec" } }],
	plugins: ["@typespec/prettier-plugin-typespec"],
	useTabs: true, // https://alexandersandberg.com/articles/default-to-tabs-instead-of-spaces-for-an-accessible-first-environment/
};
