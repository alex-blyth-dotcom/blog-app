# My Django Blog

A learning-focused Django blog project with a clean, modern frontend and a solid DevOps foundation. Built to test out Civo services and explore full-stack development after a career in operations.

---

## 🚀 Features

- 📝 Blog posts with titles, timestamps, and content
- 💬 Comment system
- 🎨 Styled with Tailwind CSS (via `django-tailwind`)
- 🧱 Backed by a Civo-managed PostgreSQL 14 database
- 🌐 Responsive design with templated frontend
- 🔐 Environment-variable-based configuration
- 🔧 Designed for deployment to Kubernetes (via Civo)
- 📦 Prepared for CI/CD and observability

---

## 🛠️ Tech Stack

- **Backend**: Python 3.x, Django
- **Database**: PostgreSQL (Civo managed)
- **Styling**: Tailwind CSS via `django-tailwind`
- **Deployment**: Kubernetes (Civo) – *planned*
- **CI/CD**: GitHub Actions/ArgoCD – *planned*
- **Auth**: Google login – *planned*
- **ML Features**: Post summarization, comment moderation – *planned*

---

## 🧪 Local Development

### 1. Clone the repo

```bash
git clone https://github.com/your-username/myblog.git
cd myblog
```

### 2. Set up a virtual environment

```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### 3. Create a `.env` file with your database config

```env
DB_NAME=myblog
DB_USER=your_user
DB_PASSWORD=your_password
DB_HOST=your-db-host.civo.com
DB_PORT=5432
```

### 4. Run database migrations

```bash
python manage.py migrate
```

### 5. Start the development server

```bash
python manage.py runserver
```

Then visit: [http://localhost:8000](http://localhost:8000)

---

## 📦 Deployment Plan

- Deploy app to Civo-managed Kubernetes cluster
- Use GitHub Actions to automate test/build/deploy
- Add monitoring and observability with OpenTelemetry

---

## ✅ Completed

- [x] Blog post model and templates
- [x] Comment system
- [x] Tailwind CSS styling
- [x] Secure Postgres connection with environment variables

---

## 🔜 Planned

- [ ] Deploy to Civo Kubernetes
- [ ] Add GitHub Actions CI/CD
- [ ] Implement Google login via Allauth
- [ ] Build REST API with DRF
- [ ] Add ML-powered features (e.g. automatic summaries)
- [ ] Integrate observability (logs, traces, metrics)

---

## 💡 About This Project

> This is a hands-on journey to move from an operations-centric background to full-stack development — while dogfooding Civo's services to build and deploy a real-world project I’ll use and maintain.

---
