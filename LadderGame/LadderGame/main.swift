/*
 커밋할 때는 최소 작업단위로 나눠서 커밋 PR은 여러 개 커밋이 합쳐져 있어야 한다.
 struct를 추가하면 파일을 나눠서 작업하기 파일을 추가하면 커밋을 해야
 좋은 커밋 로그 공부
 */

/*
 들여쓰기 depth를  1단계로 줄이기
 메소드의 라인 최대 10줄
 method가 한 가지일만 하도록
 
 위 3개 다 메소드를 분리하기
 
 
 /*
 LadderGame 이 모든 객체를 생성해서 소유하고 있어서 의존성을 갖고 있는 것보다는
 다른 객체가 할 일을 넘겨주도록 (=의존성을 줄이도록) 작성하는 게 좋습니다.
 여기 변수들이 (극단적으로보면) 존재하지 않고, LadderGame을 호출하는 상위 객체에서 넘겨주도록 작성하는 게 좋습니다. 이 부분은 3단계를 할 때 개선해봅시다.
 ->감이 안 잡힘.
 */
 
 
 */

import Foundation
/*
입력이 있고, 처리하고, 출력이 있는 구조에서는
(print가 포함되어 있지만) Input 관련 객체,
 입력받은 값들로 사다리게임을 처리하는 객체,
 사다리게임 구조를 출력하는 Output 객체 이런식으로 구분
 이렇게 구분 했을 때 하나의 기능을 변경할 때 하나의 파일만 바뀌어야 함
 
 LadderGame은 Input이 넘겨준 값들로 사다리게임을 처리
         -> ladderMatrix를 만들면 되나? 그걸 Output에 넘겨주고
 
 Output은 LadderGame이 넘겨준 값으로 사다리 출력
 
 */
func main(){
    var input = Input()
    input.start()
    let inputValue:(numerOfPerson:Int, heightOffLadder:Int) = input.result
    var ladderGame = LadderGame(inputValue.numerOfPerson, inputValue.heightOffLadder)
    let ladderMatrix = ladderGame.makeLadder()
}

main()
