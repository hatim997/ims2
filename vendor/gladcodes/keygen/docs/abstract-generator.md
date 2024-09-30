# AbstractGenerator Class

- [Overview](#overview)
- [Properties](#properties)
- [Methods](#methods)

## Overview

The `AbstractGenerator` class is the base class implemented by all generator classes of the Keygen package, including the `Keygen` class. It implements the `GeneratorInterface` interface - which requires that a `generate()` method must be implemented by all abstract generators. The `AbstractGenerator` class provides the basic functionalities for all key generators.

> **<h4>Abstract Class</h4>**
> The `AbstractGenerator` class is defined as an abstract class - hence, its constructor cannot be called with the `new` keyword. It is meant to be extended by specialised sub-classes.

<br/>
The `AbstractGenerator` class has two direct sub-classes namely:

- **<h4>`Generator` class</h4>**
    This is the parent class of all the built-in generators. It provides specialised functionality for _key exclusions_ and handling the key generation logic, which includes: applying key transformations and adding affixes to generated keys. See [Generator Class] for more details about the `Generator` class.
    <br/>

- **<h4>`Keygen` class</h4>**
    The `Keygen` class acts as a [facade] to provide access to all the functionalities of the built-in key generators via lots of convenience methods. It is overloaded to provide dynamic methods for creating instances of specialized generators. See [Keygen Class] for more details about the `Keygen` class.

<br/>

## Properties

- **<h3>`length`</h3>**
    This is an `integer` that specifies the length of keys to be generated by the generator. It defaults to `16` if no length has been specified. See [Key Length] to learn more about defining key length.
    <br/>

- **<h3>`prefix`</h3>**
    This is the `string` that will be prepended to keys generated by the generator (_affixed to the beginning of generated keys_). It returns `null` if no prefix has been specified. See [Key Affixes] to learn more about using prefixes.
    <br/>

- **<h3>`suffix`</h3>**
    This is the `string` that will be appended to keys generated by the generator (_affixed to the ending of generated keys_). It returns `null` if no suffix has been specified. See [Key Affixes] to learn more about using suffixes.
    <br/>

- **<h3>`inclusiveAffix`</h3>**
    This is a `boolean` flag that determines whether the key length should include the length of the affixes (prefix and suffix) - this is known as _affix inclusion_. `true` indicates that the key length should include the affix length. The default value is `true`. See [Key Affixes] to learn more about affix inclusion.
    <br/>

- **<h3>`randomLength`</h3>**
    This is a `boolean` flag that indicates whether the generator should generate keys of random length. If this flag is `true`, the `length` property of the generator is ignored and keys of random length are generated. The default value is `false`. See [Key Length] to learn more about creating random length keys.
    <br/>

- **<h3>`transformations`</h3>**
    This is an `array` that represents a queue of key transformations that have been registered on the generator. See [Key Transformations] to learn more about using key transformations.
    <br/>

- **<h3>`mutable`</h3>**
    This is an `array` that represents a collection of mutable generator properties that have been specified for the generator. See [Key Mutations] to learn more about mutable generator properties.
    <br/>

- **<h3>`immutable`</h3>**
    This is an `array` that represents a collection of immutable generator properties that have been specified for the generator. See [Key Mutations] to learn more about immutable generator properties.

<br/>

## Methods

> **<h4>Return Values</h4>**
> All methods of the `AbstractGenerator` class, except the `generate()` method, return the generator instance on which they are called. This offers the flexibility of using [method chaining] to execute methods on the generator.

- **<h3>`length(int|bool $length [, bool $propagateMutation = true])`</h3>**
    The `length()` method defines the key length of the generator. If the `$length` argument is `false`, then the `randomLength` property is set to `true` - and keys of random length will be generated. Otherwise, if it is not a valid numeric length value, an `InvalidLengthKeygenException` is thrown. See [Key Length] to learn more about defining key length.
    <br/>

> **<h3>`$propagateMutation`</h3>**
> The `$propagateMutation` argument is a boolean that indicates if the change in the length property should be adopted by linked generators in the mutates collection of the generator. It defaults to `true` if not specified. This is the second argument of all setter methods for mutable properties: `length()`, `prefix()` and `suffix()` methods. See [Key Mutations] to learn more about mutation propagation.

- **<h3>`prefix(string|bool $prefix [, bool $propagateMutation = true])`</h3>**
    The `prefix()` method sets the prefix string of the generator. If the `$prefix` argument is `false`, it clears any existing prefix on the generator. Otherwise, if it is not a valid affix value, an `InvalidAffixKeygenException` is thrown.
    <br/>

- **<h3>`suffix(string|bool $suffix [, bool $propagateMutation = true])`</h3>**
    The `suffix()` method sets the suffix string of the generator. If the `$suffix` argument is `false`, it clears any existing suffix on the generator. Otherwise, if it is not a valid affix value, an `InvalidAffixKeygenException` is thrown.
    <br/>

- **<h3>`affix(string|bool $prefix = null [, string|bool $suffix = null])`</h3>**
    The `affix()` method is a convenience method that sets the prefix and suffix strings of the generator with a single call. The `$prefix` argument sets the prefix string of the generator, while the `$suffix` argument sets the suffix string. If any of the values is not a valid affix value, an `InvalidAffixKeygenException` is thrown.
    <br/>

- **<h3>`inclusiveAffix(bool $flag)`</h3>**
    The `inclusiveAffix()` method enables or disables _affix inclusion_ on the generator. If the `$flag` argument is set to `true`, affix inclusion is enabled; otherwise, it is disabled.
    <br/>

- **<h3>`transformation(array|callable $transformation [...])`</h3>**
    The `transformation()` method appends the specified transformation or collection of transformations to the transformations queue. The `$transformation` argument must be a `callable` or an `array` that contains only callables, otherwise an `InvalidTransformationKeygenException` is thrown.
    <br/>

- **<h3>`transformations(array|callable $transformation [...])`</h3>**
    The `transformations()` method resets the transformations queue and starts a new queue with the specified transformation or collection of transformations. The `$transformation` argument must be a `callable` or an `array` that contains only callables, otherwise an `InvalidTransformationKeygenException` is thrown. If `$transformation` is set to an empty array (`[]`), the transformations queue is emptied.


[facade]: <https://en.wikipedia.org/wiki/Facade_pattern>
[Generator Class]: <./generator.md>
[Keygen Class]: <./keygen.md>
[Key Length]: <./key-length.md>
[Key Affixes]: <./key-affixes.md>
[Key Mutations]: <./key-mutation.md>
[Key Transformations]: <./key-transformation.md>
[method chaining]: <https://en.wikipedia.org/wiki/Method_chaining>