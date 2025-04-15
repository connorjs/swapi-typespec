/**
 * @see <https://prettier.io/docs/configuration>
 * @type {import("prettier").Config}
 */
const config = {
	plugins: ["@typespec/prettier-plugin-typespec"],
	overrides: [{ files: "*.tsp", options: { parser: "typespec" } }],
};

export default config;
