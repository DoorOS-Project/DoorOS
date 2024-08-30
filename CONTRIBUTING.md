# Contributing to DoorOS

Thank you for your interest in contributing to the DoorOS Open-source project! We welcome all contributions, whether it's fixing bugs, improving documentation, or adding new features. This guide will help you get started.

## How to Contribute

### 1. Fork the Repository

First, fork the DoorOS repository to your GitHub account:

1. Click the "Fork" button on the top right of the repository page.
2. Clone your fork to your local machine:
    ```bash
    git clone https://github.com/your-username/DoorOS.git
    ```

### 2. Create a New Branch

To work on a new feature or fix, create a new branch based on `main`:

```bash
git checkout -b feature/your-feature-name
```

### 3. Make Your Changes

Make the necessary changes in the codebase. Ensure your code adheres to the project's coding standards and includes comments where necessary.

#### Source File Header

All source files should include the following header at the top. This helps maintain consistency across the project and provides essential information about each file.

- C:
  ```c
  /******************************************************************************
   * DoorOS - A Free Open-source GUI Operating System
   * 
   * This file is part of the DoorOS Open-source project, a free alternative to 
   * Windows designed to cater to a wide range of users, including enterprises.
   * 
   * Author: DoorOS Project
   * License: GNU General Public License v2.0-only
   * 
   * (c) 2024 DoorOS Open-source Project
   * 
   * File Description:
   * [Provide a brief description of what this source file does]
   *****************************************************************************/
  ```
- Assembly:
  ```asm
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; DoorOS - A Free Open-source GUI Operating System
  ;
  ; This file is part of the DoorOS Open-source project, a free alternative to
  ; Windows designed to cater to a wide range of users, including enterprises.
  ;
  ; Author: DoorOS Project
  ; License: GNU General Public License v2.0-only
  ;
  ; (c) 2024 DoorOS Open-source Project
  ;
  ; File Description:
  ; [Provide a brief description of what this source file does]
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ```

Replace `[Provide a brief description of what this source file does]` with a concise description of the file's purpose.

### 4. Test Your Changes

Before submitting your contribution, please ensure that your code works as expected:

- Run any existing tests.
- If applicable, write new tests to cover your changes.

### 5. Commit Your Changes

Once your changes are ready and tested, commit them to your branch:

```bash
git add .
git commit -m "Add feature/fix: [brief description of your changes]"
```

### 6. Push to Your Fork

Push your branch to your forked repository:

```bash
git push origin feature/your-feature-name
```

### 7. Submit a Pull Request

Go to the original DoorOS repository and open a pull request (PR) from your branch. In the PR description, clearly explain the changes you made and the reason behind them. Include any relevant issue numbers (e.g., `Fixes #123`).

## Code of Conduct

Please note that this project is governed by a [Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project, you agree to abide by its terms.

## Getting Help

If you need any help, feel free to open an issue on GitHub.

We appreciate your efforts and look forward to your contributions!

---

© 2024 DoorOS Open-source Project. All rights reserved.

