# Changelog

## 0.1.8 - 2021-07-28

### Features

-   Model can be composed with the functional Keras API before being trained.
-   Makes all the Yggdrasil structural variable importances available.
-   Makes getting the variable importance instantaneous.
-   Surface the `name` argument in the model classes constructors.
-   Add a `postprocessing` model constructor argument to easy apply
    post-processing on the model predictions without relying on the Keras
    Functional API.
-   Add `extract_all_trees` method in the model inspector to efficiently exact
    all the trees.
-   Add `num_threads` constructor argument to control the number of training
    threads without using the advanced configuration.
-   By default, remove the temporary directory used to train the model when the
    model python object is garbage collected.
-   Add the `import_dataspec` constructor argument to the model builder to
    import the feature definition and dictionaries (instead of relying on
    automatic discovery).

### Changes

-   When saving a model in a directory already containing a model, only the
    `assets` directory is entirely removed before the export (instead of the
    entire model directory).

### Fixes

-   Wrong label shape in the model inspector's objective field for
    pre-integerized labels.

## 0.1.7 - 2021-06-23

### Features

-   Add more of characters to the non-recommended list of feature name
    characters.
-   Make the inference op multi-thread compatible.
-   Print an explicit error and some instructions when training a model with a
    Pandas dataframe.
-   `pd_dataframe_to_tf_dataset` can automatically rename feature to make them
    compatible with SavedModel export signatures.
-   `model.save(...)` can override an existing model.
-   The link function of GBT model can be removed. For example, a binary
    classification GBT model trained with apply_link_function=False will output
    logits.

## 0.1.6 - 2021-06-07

### Features

-   Add hyper-parameter `sorting_strategy` to disable the computation of the
    pre-sorted index (slower to train, but consumes less memory).
-   Format wrapper code for colab help display.
-   Raises an error when a feature name is not compatible (e.g. contains a
    space).

## 0.1.5 - 2021-05-26

### Features

-   Raise an error of the number of classes is greater than 100 (can be
    disabled).
-   Raise an error if the model's task does not match the
    `pd_dataframe_to_tf_dataset`'s task.

### Bug fix

-   Fix failure when input feature contains commas.

## 0.1.4 - 2021-05-21

### Features

-   Stop the training when interrupting a colab cell / typing ctrl-c.
-   `model.fit` support training callbacks and a validation dataset.

### Bug fix

-   Fix failure when there are not input features.

## 0.1.3 - 2021-05-19

### Features

-   Register new inference engines.

## 0.1.2 - 2021-05-18

### Features

-   Inference engines: QuickScorer Extended and Pred

## 0.1.1 - 2021-05-17

### Features

-   Migration to TensorFlow 2.5.0.
-   By default, use a pre-compiled version of the OP wrappers.

### Bug fix

-   Add missing `plotter.js` from Pip package.
-   Use GitHub version of Yggdrasil Decision Forests by default.

## 0.1.0 - 2021-05-11

Initial Release of TensorFlow Decision Forests.

### Features

-   Random Forest learner.
-   Gradient Boosted Tree learner.
-   CART learner.
-   Model inspector: Inspect the internal model structure.
-   Model plotter: Plot decision trees.
-   Model builder: Create model "by hand".
