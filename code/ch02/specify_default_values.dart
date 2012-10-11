main() {
  // BEGIN(specify_default_values)
  /**
   * Sets the [bold] and [hidden] flags to the values you specify,
   * defaulting to false.
   */
  enableFlags({bool bold: false, bool hidden: false}) {
    //...
  }

  enableFlags(bold: true); // bold will be true; hidden will be false.
  // END(specify_default_values)
}
