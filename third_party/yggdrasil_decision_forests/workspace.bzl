"""Yggdrasil Decision Forests project."""

def deps():
    #http_archive(
    #    name = "ydf",
    #    urls = ["https://github.com/google/yggdrasil-decision-forests/archive/refs/heads/main.zip"],
    #    strip_prefix = "yggdrasil-decision-forests-main",
    #)

    # You can also clone the YDF repository manually.
    native.local_repository(
        name = "ydf",
        path = "../yggdrasil_decision_forests_bazel",
    )
