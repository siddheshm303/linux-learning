#!/bin/bash

todo_file="todo.txt"

create_file() {
    if [[ ! -f "$todo_file" ]]; then
    	touch "$todo_file"
    	echo "todo.txt createed"
    else
    	echo "Todo file exists."
    fi
}

add_task() {
    local task="$1"
    if [[ -z "$task" ]] then
    	echo "Error: No task description provided."
    	return 1
    else
    	echo "$task" >> "$todo_file"
    	echo "Task Added:$task"
    fi
}

list_task() {
    if [[ ! -s "$todo_file" ]]; then
    	echo "No tasks to display!"
    	return
    fi

    echo "=== Your TODO List ==="
    local i=1
    while IFS= read -r line; do
        echo "$i.$line"
        ((i++))
    done < "$todo_file"
}

delete_task() {
	local task_no="$1"
	if ! [[ "$task_no" =~ ^[0-9]+$ ]]; then
		echo "Error: Please enter valid task no."
		return 1
	fi
	
	if [[ "$task_no" -le 0 ]]; then
		echo "Error: Task no. should be greater than 0!"
		return 1
	fi
	
	if [[ "$task_no" -gt $(wc -l < "$todo_file") ]]; then
		echo "Error: Task no. out of range!"
	return 1
	fi
	
	sed -i "$task_no"d "$todo_file"
	echo "Task $task_no deleted."
}

main_menu() {
	while true; do
		echo 
		echo "==Choose Option=="
		echo "1.Add task"
		echo "2.List tasks"
		echo "3.Delete task"
		echo "4.Exit"
		read -p "What is your choice? " choice

		case $choice in 
			1)
				read -p "Enter task description: " desc
				add_task "$desc"
				;;
			2)
				list_task
				;;
			3)
				list_task
				read -p "Enter task no. to delete: " num
				delete_task "$num"
				;;
			4)
				echo "Exiting..."
				break
				;;
			*)
				echo "Invalid Choice!"
				;;
		esac
	done	
				
}

create_file
main_menu


	
