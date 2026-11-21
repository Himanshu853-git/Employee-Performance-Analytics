import pandas as pd

import matplotlib.pyplot as plt

import seaborn as sns

sns.set(style='whitegrid')

employee_data = pd.read_csv('employee_data.csv')

engagement_data = pd.read_csv( 'employee_engagement_survey_data.csv')

recruitment_data = pd.read_csv('recruitment_data.csv')

training_data = pd.read_csv('training_and_development_data.csv')

# employee status distribution plot

plt.figure(figsize=(10,5))

sns.countplot( 
    data=employee_data, 
    x ='EmployeeStatus',
    palette='viridis'
)

plt.title('Employee Status Distribution')
plt.xticks(rotation=45)
plt.tight_layout()

plt.savefig('images/employee_status_distribution.png')
plt.show()


#Performance Score Distribution


plt.figure(figsize=(8,5))

sns.countplot(
    data=employee_data,
    x='Performance Score',
    palette='Set2'
)

plt.title('Performance Score Distribution')
plt.tight_layout()

plt.savefig('images/performance_score_distribution.png')
plt.show()


#Engagement Score Distribution

plt.figure(figsize=(8,5))

sns.countplot(
    data=engagement_data,
    x='Engagement Score',
    palette='coolwarm'
)

plt.title('Engagement Score Distribution')
plt.tight_layout()

plt.savefig('images/engagement_score_distribution.png')
plt.show()


#Training Outcome Distribution

plt.figure(figsize=(8,5))

sns.countplot(
    data=training_data,
    x='Training Outcome',
    palette='magma'
)

plt.title('Training Outcome Distribution')
plt.tight_layout()

plt.savefig('images/training_outcome_distribution.png')
plt.show()


#Recruitment Status Distribution

plt.figure(figsize=(8,5))

sns.countplot(
    data=recruitment_data,
    x='Status',
    palette='cubehelix'
)

plt.title('Recruitment Status Distribution')
plt.tight_layout()

plt.savefig('images/recruitment_status_distribution.png')
plt.show()

# department distribution

plt.figure(figsize=(12,6))

sns.countplot(
    data=employee_data,
    y='DepartmentType',
    order=employee_data['DepartmentType'].value_counts().index,
    palette='viridis'
)

plt.title('Department Distribution')
plt.xlabel('Employee Count')
plt.ylabel('Department')

plt.tight_layout()

plt.savefig('images/department_distribution.png')
plt.show()


#experience distribution (histogram)


plt.figure(figsize=(10,6))

sns.histplot(
    recruitment_data['Years of Experience'],
    bins=15,
    kde=True,
    color='steelblue'
)

plt.title('Years of Experience Distribution')
plt.xlabel('Years of Experience')
plt.ylabel('Applicant Count')

plt.tight_layout()

plt.savefig('images/experience_distribution.png')
plt.show()