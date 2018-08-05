# Learn You a Haskell Exercises

Some exercises as a companion for the book Learn You a Haskell For Great Good!

See [http://learnyouahaskell.com/chapters](http://learnyouahaskell.com/chapters)

The exercises were taken from [noelmarkham/learn-you-a-haskell-exercises](https://github.com/noelmarkham/learn-you-a-haskell-exercises) and I have attempted to turn them into a `stack` project with unit tests.

I'll welcome any PRs for additional or improved exercises and tests :)

## Chapters

**[Book Chapter](https://nostarch.com/lyah.htm#content)**|**[Online Chapter](http://learnyouahaskell.com/chapters)**|**Exercise File**|**Test File**
:-----:|:-----:|:-----:|:------:
1. Starting Out|[2. Starting out](http://learnyouahaskell.com/starting-out)|[`StartingOut.hs`](src/StartingOut.hs)|[`StartingOutSpec.hs`](test/StartingOutSpec.hs)
2. Believe the Type|[3. Types and Typeclasses](http://learnyouahaskell.com/types-and-typeclasses)|[`TypesAndTypeclasses.hs`](src/TypesAndTypeclasses.hs)|[`TypesAndTypeclassesSpec.hs`](test/TypesAndTypeclassesSpec.hs)
3. Syntax in Functions|[4. Syntax in Functions](http://learnyouahaskell.com/syntax-in-functions)|[`SyntaxInFunctions.hs`](src/SyntaxInFunctions.hs)|[`SyntaxInFunctionsSpec.hs`](test/SyntaxInFunctionsSpec.hs)

## Running

You can load the project in GHCi by running `stack ghci` in the project root. This will load all source modules by default. You can reload the modules after you make changes by running `:reload` in the GHCi prompt.

## Testing

All exercises should have associated `hspec` tests, and you can run all the tests through `stack` by running: `stack test`.

## License

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
