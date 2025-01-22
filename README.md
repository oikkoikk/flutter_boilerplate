# Flutter Clean Architecture + MVPVM Boilerplate

Flutter의 기본 counter boilerplate 코드를 토대로, **Clean Architecture**와 **MVPVM** 패턴을 적용한 best-practice 프로젝트입니다.

| 실행 화면                                                                                                                          |
| ---------------------------------------------------------------------------------------------------------------------------------- |
| <img width="500" alt="프로젝트 실행 화면" src="https://github.com/user-attachments/assets/d49a20a0-9624-4728-a095-188a38e4eb1f" /> |

## 프로젝트 개요

- **MVPVM** 패턴을 통해 `View`는 **UI 구현**에만 집중하고, `Presenter`는 UI 이벤트와 비즈니스 로직을 책임지며, `ViewModel`은 **상태(state) 관리**를 담당합니다.
- **Clean Architecture**를 도입해 **Domain**, **Data**, **Presentation** 레이어로 책임을 분리하고, 레이어 간 의존성을 **내부 → 외부**로만 흐르도록 합니다.

## 구조 및 흐름도

아래는 **MVPVM** 패턴과 **Clean Architecture**의 흐름을 간단히 나타낸 예시 다이어그램입니다.

| MVPVM                                                                                                          | Clean Architecture                                                                                             |
| -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| ![MVPVM architecture diagram](https://github.com/user-attachments/assets/7d5dc8bf-0bc8-48d8-b796-cb7d21e592c1) | ![Clean architecture diagram](https://github.com/user-attachments/assets/e94a4612-4638-4823-8bdd-e6b92f364e27) |

1. **View**는 UI 요소와 User Action 처리를 담당합니다.
2. **Presenter**(`Riverpod` Provider)는 User Action를 받고 **비즈니스 로직**이나 **UseCase**를 호출합니다.
3. **ViewModel**은 `Freezed`로 정의된 불변 객체로 **상태를 관리**하며, Presenter가 상태를 업데이트하면 **UI가 자동 갱신**됩니다.
4. **Domain Layer**에서는 `UseCase`가 **핵심 비즈니스 로직**을 담당하며, `Model`(혹은 `Entity`)이 도메인 객체를 정의합니다.  
5. **Data Layer**에서는 `Repository` 구현체가 **DB**와 같은 external interface와의 통신을 처리합니다.

## 주요 기술 스택

- **Riverpod**  
  - Presenter의 상태 관리
- **Freezed**  
  - Model, ViewModel 불변 객체 생성

## 참고 자료

- [MVPVM Design Pattern - The Model-View-Presenter-ViewModel Design Pattern for WPF](https://learn.microsoft.com/en-us/archive/msdn-magazine/2011/december/mvpvm-design-pattern-the-model-view-presenter-viewmodel-design-pattern-for-wpf#the-mvp-pattern)
