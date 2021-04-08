import { acceptance } from "discourse/tests/helpers/qunit-helpers";

acceptance("SmallCaps", { loggedIn: true });

test("SmallCaps works", async assert => {
  await visit("/admin/plugins/small-caps");

  assert.ok(false, "it shows the SmallCaps button");
});
