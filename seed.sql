-- =============================================
-- SSP Books - Seed Data
-- =============================================

-- Insert Categories
INSERT INTO categories (name, slug, description, icon) VALUES
('Web Development', 'web-development', 'Master modern web technologies including React, Node.js, and more', '🌐'),
('Data Science', 'data-science', 'Learn data analysis, machine learning, and AI fundamentals', '📊'),
('Mobile Development', 'mobile-development', 'Build native and cross-platform mobile applications', '📱'),
('Cloud & DevOps', 'cloud-devops', 'Master cloud infrastructure, CI/CD, and containerization', '☁️'),
('Cybersecurity', 'cybersecurity', 'Learn ethical hacking, network security, and defense strategies', '🔒'),
('UI/UX Design', 'ui-ux-design', 'Create stunning user interfaces and seamless experiences', '🎨'),
('Programming Languages', 'programming-languages', 'Deep dive into Python, Java, Go, Rust and more', '💻'),
('Database Management', 'database-management', 'SQL, NoSQL, and modern database architectures', '🗄️')
ON CONFLICT (slug) DO NOTHING;

-- Insert Courses
INSERT INTO courses (title, slug, description, short_description, price, discount_price, author, category_id, difficulty, duration_hours, lessons_count, rating, reviews_count, students_count, is_featured, is_bestseller, tags) VALUES
(
    'The Complete Next.js 15 Bootcamp',
    'complete-nextjs-15-bootcamp',
    'Master Next.js 15 from scratch. Learn Server Components, App Router, Server Actions, authentication, database integration, deployment and more. Build 5 real-world projects including an e-commerce platform and social media app.',
    'Build modern full-stack apps with Next.js 15, React 19, and TypeScript',
    2499.00, 499.00,
    'Sai Srinivas Padala',
    (SELECT id FROM categories WHERE slug = 'web-development'),
    'intermediate', 42.5, 385, 4.85, 12840, 54200, TRUE, TRUE,
    ARRAY['nextjs', 'react', 'typescript', 'fullstack']
),
(
    'Python for Data Science & ML',
    'python-data-science-ml',
    'Comprehensive Python course covering NumPy, Pandas, Matplotlib, Scikit-learn, TensorFlow, and real-world data science projects. From basics to advanced machine learning algorithms.',
    'Master Python for data analysis, visualization, and machine learning',
    1999.00, 399.00,
    'Priya Sharma',
    (SELECT id FROM categories WHERE slug = 'data-science'),
    'beginner', 56.0, 420, 4.78, 9650, 41500, TRUE, TRUE,
    ARRAY['python', 'ml', 'data-science', 'tensorflow']
),
(
    'React Native - Build 10 Apps',
    'react-native-build-10-apps',
    'Learn React Native by building 10 production-ready mobile applications. Covers navigation, state management, APIs, push notifications, and app store deployment.',
    'Create cross-platform mobile apps with React Native and Expo',
    1799.00, 349.00,
    'Rahul Verma',
    (SELECT id FROM categories WHERE slug = 'mobile-development'),
    'intermediate', 38.0, 310, 4.72, 7200, 28900, TRUE, FALSE,
    ARRAY['react-native', 'mobile', 'expo', 'javascript']
),
(
    'AWS Solutions Architect Pro',
    'aws-solutions-architect-pro',
    'Prepare for the AWS Solutions Architect Professional certification. Deep dive into VPC, EC2, S3, Lambda, CloudFormation, and enterprise architecture patterns.',
    'Master AWS cloud architecture and pass the SAP-C02 certification',
    2999.00, 599.00,
    'Anil Kumar',
    (SELECT id FROM categories WHERE slug = 'cloud-devops'),
    'advanced', 48.0, 390, 4.90, 5800, 22400, TRUE, TRUE,
    ARRAY['aws', 'cloud', 'certification', 'devops']
),
(
    'Ethical Hacking & Penetration Testing',
    'ethical-hacking-penetration-testing',
    'Learn ethical hacking from scratch. Master Kali Linux, Burp Suite, Metasploit, and network penetration testing. Includes hands-on CTF challenges.',
    'Become a certified ethical hacker with hands-on security labs',
    2299.00, 449.00,
    'Deepak Singh',
    (SELECT id FROM categories WHERE slug = 'cybersecurity'),
    'intermediate', 44.0, 365, 4.82, 6400, 25600, FALSE, TRUE,
    ARRAY['hacking', 'security', 'kali', 'pentesting']
),
(
    'Figma to Production Design System',
    'figma-production-design-system',
    'Create enterprise-grade design systems in Figma. Learn component architecture, design tokens, auto-layout mastery, prototyping, and developer handoff best practices.',
    'Build scalable design systems from concept to production',
    1499.00, 299.00,
    'Meera Patel',
    (SELECT id FROM categories WHERE slug = 'ui-ux-design'),
    'intermediate', 28.0, 210, 4.68, 4200, 18700, FALSE, FALSE,
    ARRAY['figma', 'design-system', 'ui', 'ux']
),
(
    'Go Programming - Zero to Hero',
    'go-programming-zero-to-hero',
    'Master Go (Golang) from fundamentals to advanced concepts. Build REST APIs, microservices, CLI tools, and concurrent applications. Includes Docker & Kubernetes deployment.',
    'Learn Go programming and build production-ready microservices',
    1699.00, 349.00,
    'Vikram Rathore',
    (SELECT id FROM categories WHERE slug = 'programming-languages'),
    'beginner', 35.0, 280, 4.75, 5100, 21300, FALSE, FALSE,
    ARRAY['golang', 'microservices', 'backend', 'concurrency']
),
(
    'PostgreSQL Mastery',
    'postgresql-mastery',
    'Complete PostgreSQL course from basics to advanced. Covers query optimization, indexing, replication, partitioning, PL/pgSQL, and database administration.',
    'Become a PostgreSQL expert with advanced DBA skills',
    1599.00, 329.00,
    'Suresh Babu',
    (SELECT id FROM categories WHERE slug = 'database-management'),
    'advanced', 32.0, 245, 4.80, 3800, 15600, FALSE, FALSE,
    ARRAY['postgresql', 'sql', 'database', 'dba']
),
(
    'Full-Stack TypeScript with Node.js',
    'fullstack-typescript-nodejs',
    'Build end-to-end TypeScript applications. Master Express, Prisma ORM, REST & GraphQL APIs, authentication, testing with Jest, and CI/CD deployment.',
    'Build type-safe full-stack applications with TypeScript',
    2199.00, 449.00,
    'Sai Srinivas Padala',
    (SELECT id FROM categories WHERE slug = 'web-development'),
    'intermediate', 40.0, 340, 4.88, 8900, 35600, TRUE, TRUE,
    ARRAY['typescript', 'nodejs', 'express', 'prisma']
),
(
    'Kubernetes & Docker Complete Guide',
    'kubernetes-docker-complete-guide',
    'Master containerization with Docker and orchestration with Kubernetes. Learn Helm, service mesh, monitoring, logging, and production deployment strategies.',
    'Deploy and manage containerized applications at scale',
    2499.00, 499.00,
    'Anil Kumar',
    (SELECT id FROM categories WHERE slug = 'cloud-devops'),
    'advanced', 46.0, 375, 4.86, 7100, 29800, TRUE, FALSE,
    ARRAY['kubernetes', 'docker', 'containers', 'devops']
),
(
    'Flutter & Dart - The Complete Course',
    'flutter-dart-complete-course',
    'Build beautiful, natively compiled mobile apps with Flutter. Master Dart, state management with Riverpod, Firebase integration, and app store publishing.',
    'Create stunning cross-platform apps with Flutter and Dart',
    1899.00, 379.00,
    'Rahul Verma',
    (SELECT id FROM categories WHERE slug = 'mobile-development'),
    'beginner', 44.0, 350, 4.74, 6800, 27500, FALSE, TRUE,
    ARRAY['flutter', 'dart', 'mobile', 'firebase']
),
(
    'Deep Learning with PyTorch',
    'deep-learning-pytorch',
    'Advanced deep learning with PyTorch. Cover CNNs, RNNs, GANs, Transformers, NLP, and computer vision. Build and deploy production ML models.',
    'Master neural networks and deep learning with PyTorch',
    2699.00, 549.00,
    'Priya Sharma',
    (SELECT id FROM categories WHERE slug = 'data-science'),
    'advanced', 52.0, 410, 4.92, 4500, 19200, TRUE, FALSE,
    ARRAY['pytorch', 'deep-learning', 'neural-networks', 'ai']
)
ON CONFLICT (slug) DO NOTHING;

-- Insert a demo admin user (password: admin123 - bcrypt hash)
INSERT INTO users (name, email, password_hash, role) VALUES
('Admin User', 'admin@sspbooks.com', '$2b$10$rQZ9QzhvCME9Q6LFnCfQHOQD5JhKfrj9xbYQXqkV7hXhvRdqPjGi2', 'admin'),
('Demo User', 'user@sspbooks.com', '$2b$10$rQZ9QzhvCME9Q6LFnCfQHOQD5JhKfrj9xbYQXqkV7hXhvRdqPjGi2', 'user')
ON CONFLICT (email) DO NOTHING;
