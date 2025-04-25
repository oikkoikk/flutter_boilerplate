# Flutter Clean Architecture + MVPVM Boilerplate

Flutter의 기본 counter boilerplate 코드를 토대로, **Clean Architecture**와 **MVPVM** 패턴을 적용한 best-practice 프로젝트입니다.

| 실행 화면                                                                                                                          |
| ---------------------------------------------------------------------------------------------------------------------------------- |
| <img width="500" alt="프로젝트 실행 화면" src="https://github.com/user-attachments/assets/d49a20a0-9624-4728-a095-188a38e4eb1f" /> |

## 프로젝트 개요

- **MVPVM** 패턴을 통해 `View`는 **UI 구현**에만 집중하고, `Presenter`는 UI 이벤트와 비즈니스 로직을 책임지며, `ViewModel`은 **상태(state) 관리**를 담당합니다.
- **Clean Architecture**를 도입해 **Domain**, **Data**, **Presentation** 레이어로 책임을 분리하고, 레이어 간 의존성을 **내부 → 외부**로만 흐르도록 합니다.

## 폴더 구조

프로젝트는 다음과 같은 핵심 폴더 구조를 사용합니다:

```shell

lib/
├── main.dart                  # 앱 진입점
└── src/
    ├── application/           # 애플리케이션 레이어 (앱 설정 및 초기화)
    │   └── apps/              # 앱 설정 관련 클래스
    ├── data/                  # 데이터 레이어
    │   └── repositories/      # 레포지토리 구현체
    ├── domain/                # 도메인 레이어
    │   ├── models/            # 도메인 모델/엔티티
    │   ├── repositories/      # 레포지토리 인터페이스
    │   └── use_cases/         # 유스케이스 (비즈니스 로직)
    └── presentation/          # 프레젠테이션 레이어
        └── pages/             # UI 페이지/화면
            └── home_page/     # 홈 페이지 구현
                ├── home_page.dart              # 페이지 위젯
                ├── home_page_presenter.dart    # Presenter
                ├── home_page_view_mobile.dart  # View
                └── home_page_view_model.dart   # ViewModel
```

## 구현 예시: 카운터 애플리케이션

### MVPVM 패턴 적용

1. **View**

   ```dart
   // home_page_view_mobile.dart
   @cwidget
   Widget buildBody(BuildContext context, WidgetRef ref) {
     return Center(
       child: Column(
         children: <Widget>[
           const Text('You have pushed the button this many times:'),
           Text(
             ref.watch(homePagePresenterProvider).counter.value.toString(),
             style: Theme.of(context).textTheme.headlineMedium,
           ),
         ],
       ),
     );
   }
    ```

2. **Presenter**

   ```dart
   // home_page_presenter.dart
   @riverpod
   class HomePagePresenter extends _$HomePagePresenter {
     @override
     HomePageViewModel build() {
       return const HomePageViewModel();
     }

     Future<void> incrementCounter(HomePageViewModel viewModel) async {
       final CounterModel updatedCounter =
           await incrementCounterUseCase(viewModel.counter);
       state = state.copyWith(counter: updatedCounter);
     }
   }
   ```

3. **ViewModel**

   ```dart
   // home_page_view_model.dart
   @freezed
   class HomePageViewModel with _$HomePageViewModel {
     const factory HomePageViewModel({
       @Default(CounterModel()) CounterModel counter, 
     }) = _HomePageViewModel;
   }
   ```

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

## 데이터 흐름 과정

1. 사용자가 버튼을 누르면 `View`에서 `Presenter.incrementCounter()` 메서드를 호출합니다.
2. `Presenter`는 `IncrementCounterUseCase`를 호출합니다.
3. `UseCase`는 비즈니스 로직을 실행하고 `Repository`에 접근합니다.
4. `Repository`는 데이터베이스에서 카운터 값을 가져오고, `UseCase`에 결과를 반환합니다.
5. `Presenter`는 새로운 상태로 `ViewModel`을 업데이트합니다.
6. `View`는 새 `ViewModel` 상태를 감지하고 UI를 자동으로 갱신합니다.

## 주요 기술 스택

- **Flutter & Dart**
  - 크로스 플랫폼 UI 프레임워크

- **Riverpod (2.4.9+)**  
  - 상태 관리 솔루션
  - 의존성 주입 및 Provider 패턴 구현
  - `riverpod_annotation`과 코드 생성을 통한 보일러플레이트 최소화

- **Freezed (2.4.6+)**  
  - 불변 객체 및 유니온 타입 생성
  - `copyWith`, 동등성 비교 등 자동 생성

- **Functional Widget (0.10.0+)**
  - 함수형 위젯 작성을 위한 어노테이션
  - 상태 관리 간소화

- **기타 도구**
  - `build_runner`: 코드 생성
  - `json_serializable`: JSON 직렬화/역직렬화
  - `melos`: 모노레포 관리 (option)

## 프로젝트 설정

```bash
# 의존성 설치
flutter pub get

# 코드 생성 (Freezed, Riverpod 등)
flutter pub run build_runner build --delete-conflicting-outputs

```

## 참고 자료

- [MVPVM Design Pattern - The Model-View-Presenter-ViewModel Design Pattern for WPF](https://learn.microsoft.com/en-us/archive/msdn-magazine/2011/december/mvpvm-design-pattern-the-model-view-presenter-viewmodel-design-pattern-for-wpf#the-mvp-pattern)
- [Riverpod 공식 문서](https://riverpod.dev/)
- [Freezed 패키지](https://pub.dev/packages/freezed)
- [Clean Architecture (Uncle Bob)](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
