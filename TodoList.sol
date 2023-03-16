// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.3;

//Insert, update, read from an array of structs

contract ToDoList{
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    function createText(string calldata _text) external{
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }

    function updateText(uint _index, string calldata _text) external{
        todos[_index].text = _text;
    }

    function getText(uint _index) external view returns(string memory, bool){
        Todo memory todo= todos[_index];
        return (todo.text, todo.completed );
    }

    function toggleCompleted(uint _index) external{
        todos[_index].completed = !todos[_index].completed;
    }
}
