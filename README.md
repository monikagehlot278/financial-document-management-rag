# 📊 FINANCIAL-DOCUMENT-MANAGEMENT-RAG

A backend system for managing financial documents with RBAC and RAG.

---

## 🚀 Features

### 🔐 Authentication & Authorization

- User registration & login (JWT-based)
- Role-Based Access Control (RBAC)
- Roles: Admin, Financial Analyst, Auditor, Client

### 📄 Document Management

- Upload financial documents (PDF)
- Store metadata (title, company, type)
- View, search, and delete documents
- Metadata-based filtering

### 🧠 RAG (Retrieval-Augmented Generation)

- PDF text extraction
- Chunking
- Embedding generation
- FAISS vector database
- Semantic search

## 🏗️ Tech Stack

- **Backend:** FastAPI
- **Database:** PostgreSQL
- **ORM:** SQLAlchemy
- **Auth:** JWT (python-jose)
- **Vector DB:** FAISS
- **Embeddings:** SentenceTransformers (MiniLM)
- **PDF Processing:** PyPDF

---

## 📁 Project Structure

```bash
project/
│
├── main.py              # FastAPI app entry point; defines all API endpoints
├── models.py            # SQLAlchemy models
├── database.py          # Database connection setup
├── auth.py              # JWT authentication & RBAC
├── rag.py               # RAG pipeline and semantic search
├── schemas.py           # Pydantic schemas
├── pdf_utils.py         # PDF text extraction utilities
├── .env                 # Environment variables
├── uploads/             # Uploaded PDF files
└── faiss_indexes/       # FAISS vector indexes
```

---

## 🔄 API Workflow

1. **Register User** → `/auth/register`
2. **Login User** → `/auth/login`
3. **Authorize using Bearer Token** in Swagger UI
4. **Create Roles** → `/roles/create`
5. **Assign Roles** → `/users/assign-role`
6. **Upload Document** → `/documents/upload`
7. **Generate Embeddings & Index Document** → `/rag/index-document`
8. **Perform Semantic Search** → `/rag/search`

---

## 🚀 System Flow

User Uploads PDF  
⬇️  
Text Extraction (PyPDF)  
⬇️  
Chunking (LangChain)  
⬇️  
Embeddings Generation (SentenceTransformers)  
⬇️  
FAISS Vector Storage  
⬇️  
Semantic Search & Retrieval
