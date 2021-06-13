<!-- PROJECT LOGO -->
<br />
<p align="center">

  <h3 align="center">Processing-Savings</h3>

  <p align="center">
    An easy way to save properties in text files using Processing language.
    <br />
    <a href="#usage">How to Use</a>
    ·
    <a href="https://github.com/rokoel/processing_savings/issues">Report Bug</a>
    ·
    <a href="https://github.com/rokoel/processing_savings/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#todo">TODO (planned)</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Easily save properties to a file using Processing language. Only java version of Processing language is supported.



### Built With

* [Processing language](https://processing.org/)

### TODO

* Add method createProperty("property_name", "property_value")
* Replace String[] in the constructor with just String and do splitting inside methods.




<!-- GETTING STARTED -->
## Getting Started


### Prerequisites

Installing Processing language is nessesary, obviously.

### Installation

After you install Processing, you will need to create new sketch.
You may copy [Example.pde's contents](https://github.com/Rokoel/processing_savings/blob/master/src/Example.pde) in your main file or code it yourself. When this "package" is needed, just create new tab, calling it "Savings" and copying [Savings.pde's contents](https://github.com/Rokoel/processing_savings/blob/master/src/Savings.pde) there. That way this class may be used in your main file.



<!-- USAGE EXAMPLES -->
## Usage

Usage example is located in [src/Example.pde](https://github.com/Rokoel/processing_savings/blob/master/src/Example.pde).

### Intended usage
First, you will need to create new instance of Savings' class...
```java
Savings saving = new Savings("filename.txt", split("property1 property2", " "), split("value1 value2", " "));
```
... and setup it.
```java
saving.setup();
```
After that you can use setProperty to set an existing property...
```java
saving.setProperty("property2", "new_value2");
```
... or get it's value.
```java
String first_property = saving.getProperty("property3");
```

<!-- CONTRIBUTING -->
## Contributing

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Twitter - [@rokoel_dude](https://twitter.com/rokoel_dude)

Project Link: [https://github.com/rokoel/processing_savings](https://github.com/rokoel/processing_savings)
