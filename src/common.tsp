/** Members common across all (most) resources. */
model CommonResourceMembers {
	// Dev note: Use the spread syntax, not extends. This keeps the name internal.
	// https://microsoft.github.io/typespec/language-basics/models#model-composition

	/** The hypermedia URL of this resource. */
	url: url;

	/** The ISO 8601 date format of the time that this resource was created. */
	created: utcDateTime;

	/** The ISO 8601 date format of the time that this resource was edited. */
	edited: utcDateTime;
}
