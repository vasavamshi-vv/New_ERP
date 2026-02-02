from django.core.management.base import BaseCommand
from django.contrib.auth import get_user_model
from masters.models import Branch, Department, Role

User = get_user_model()

class Command(BaseCommand):
    help = 'Final reconstruction with Email-only User model'

    def handle(self, *args, **options):
        self.stdout.write(self.style.SUCCESS('Starting reconstruction...'))

        # 1. Get or Create Hyderabad Branch
        branch, _ = Branch.objects.get_or_create(name="Hyderabad - Tech Park")
        
        # 2. Create Dept using 'department_name'
        dept, _ = Department.objects.get_or_create(
            department_name="IT", 
            branch=branch, 
            defaults={'code': 'HYD-IT'}
        )

        # 3. Create Role using 'role' field
        role_obj, _ = Role.objects.get_or_create(
            role="Admin", 
            department=dept, 
            defaults={
                'description': 'System Administrator',
                'permissions': {"all": True}
            }
        )

        # 4. Create Admin User (Removed 'username' as it is not in your model)
        email = "admin@stackly.com"
        if not User.objects.filter(email=email).exists():
            User.objects.create_user(
                email=email,
                password="password123",
                first_name="Super",
                last_name="Admin"
            )
            self.stdout.write(self.style.SUCCESS(f'User {email} created!'))
        
        self.stdout.write(self.style.SUCCESS('SUCCESS! Reconstruction complete.'))
