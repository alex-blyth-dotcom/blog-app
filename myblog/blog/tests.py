from django.test import TestCase
from .models import Post
from django.utils import timezone
from django.urls import reverse

class PostModelTest(TestCase):
    def test_post_str(self):
        post = Post.objects.create(title="Test", content="content", created_at=timezone.now())
        self.assertEqual(str(post), "Test")

class PostViewsTest(TestCase):
    def setUp(self):
        self.post = Post.objects.create(title="Title", content="Body", created_at=timezone.now())

    def test_post_list_view(self):
        response = self.client.get(reverse("post_list"))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, self.post.title)
