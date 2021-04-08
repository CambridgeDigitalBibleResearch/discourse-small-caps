export default function() {
  this.route("small-caps", function() {
    this.route("actions", function() {
      this.route("show", { path: "/:id" });
    });
  });
};
