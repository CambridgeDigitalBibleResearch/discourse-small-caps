// https://meta.discourse.org/t/developers-guide-to-markdown-extensions/66023

export function setup(helper) {
	helper.allowList(['span.small-caps']);
	helper.registerPlugin(md => {
		md.inline.bbcode.ruler.push('small-caps', {
			tag: 'smallcaps',
			wrap: 'span.small-caps'
		});
	});
}