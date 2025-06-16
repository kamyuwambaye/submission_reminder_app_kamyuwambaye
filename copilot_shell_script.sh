#!/bin/bash

echo "Enter the new assignment name:"
read newAssignment
sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=${newAssignment}/" ./submission_reminder_*/config/config.env
echo "Updated assignment. Running reminder app..."
bash ./submission_reminder_*/scripts/startup.sh
