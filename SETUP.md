# Development

## Publishing

To update formulas when new versions are released:

1. Update the URL 

    ```rb
    url "https://files.pythonhosted.org/packages/source/w/workback/workback-0.1.1.tar.gz"
    ```

1. Calculate the SHA256 for the release

    ```sh
    # E.g.
    curl -L -s "https://files.pythonhosted.org/packages/source/w/workback/workback-0.1.1.tar.gz" | shasum -a 256
    d43e8083ec8054eb54307b8d81b9517cf0b9751737edd8bd1171ddac0ff9bf1b  -
    ```

1. Update the SHA256 in the formula file

    ```rb
    sha256 "d43e8083ec8054eb54307b8d81b9517cf0b9751737edd8bd1171ddac0ff9bf1b"
    ```

2. Commit and push changes
3. Users can update with `brew update` followed by `brew upgrade workback`
