# 📘 การเปรียบเทียบ Microsoft 365 EMS E3, IP&G และ M365 E5

**เอกสารฉบับสมบูรณ์**  
**วันที่:** 24 มิถุนายน 2026  
**เวอร์ชัน:** 1.0

---

## 📑 สารบัญ

1. [บทนำ](#-บทนำ)
2. [ภาพรวมผลิตภัณฑ์](#-ภาพรวมผลิตภัณฑ์)
3. [ตารางเปรียบเทียบฟีเจอร์](#-ตารางเปรียบเทียบฟีเจอร์)
4. [Use Cases](#-use-cases)
5. [วิเคราะห์ราคา](#-วิเคราะห์ราคา)
6. [คำแนะนำในการเลือก](#-คำแนะนำในการเลือก)
7. [สรุป](#-สรุป)

---

## 🎯 บทนำ

เอกสารฉบับนี้จัดทำขึ้นเพื่อเปรียบเทียบผลิตภัณฑ์ด้าน Security และ Compliance ของ Microsoft 365 จำนวน 3 รายการ ได้แก่:

- **Microsoft 365 EMS E3** - Endpoint และ Identity Management ระดับพื้นฐาน
- **Microsoft Purview Information Protection & Governance (IP&G)** - Data Protection และ Compliance
- **Microsoft 365 E5** - Security และ Compliance แบบครบวงจร

---

## 📊 ภาพรวมผลิตภัณฑ์

### 1️⃣ Microsoft 365 EMS E3

**Enterprise Mobility + Security E3** เป็นชุดผลิตภัณฑ์ที่รวมความสามารถด้าน Identity และ Endpoint Management เข้าด้วยกัน

#### ฟีเจอร์หลัก:

| หมวด | ฟีเจอร์ | รายละเอียด |
|------|---------|------------|
| **Identity & Access** | Azure AD Premium P1 | Identity management ระดับ enterprise |
| | Multi-Factor Authentication (MFA) | การยืนยันตัวตน 2 ขั้นตอน |
| | Conditional Access | นโยบายการเข้าถึงแบบมีเงื่อนไข |
| | Self-Service Password Reset | รีเซ็ตรหัสผ่านด้วยตัวเอง |
| | Password Writeback | ซิงค์รหัสผ่านกลับ on-premise |
| | Dynamic Groups | กลุ่มผู้ใช้แบบไดนามิก |
| **Endpoint Management** | Microsoft Intune Plan 1 | จัดการอุปกรณ์ mobile และ PC |
| | Mobile Device Management (MDM) | ควบคุมอุปกรณ์ mobile |
| | Mobile Application Management (MAM) | ควบคุมแอปพลิเคชัน |
| | Windows Autopilot | ตั้งค่า Windows อัตโนมัติ |
| | Endpoint Analytics | วิเคราะห์ประสิทธิภาพอุปกรณ์ |
| **Information Protection** | Azure Information Protection P1 | ป้องกันข้อมูลระดับพื้นฐาน |
| | Manual Labeling | ติดป้ายกำกับข้อมูลด้วยมือ |
| | Basic Encryption | การเข้ารหัสพื้นฐาน |
| | Rights Management Services | ควบคุมสิทธิ์การเข้าถึง |

---

### 2️⃣ Microsoft Purview Information Protection & Governance (IP&G)

**Microsoft Purview** เป็นโซลูชันครบวงจรสำหรับ Data Protection, Compliance และ Governance

#### ฟีเจอร์หลัก:

| หมวด | ฟีเจอร์ | รายละเอียด |
|------|---------|------------|
| **Information Protection** | Sensitivity Labels | ป้ายกำกับความอ่อนไหว |
| | Auto-labeling ด้วย AI/ML | ติดป้ายอัตโนมัติด้วย machine learning |
| | Double Key Encryption | การเข้ารหัสแบบ dual key |
| | Customer Key | ควบคุมคีย์การเข้ารหัสเอง |
| | Content Explorer | สำรวจและวิเคราะห์ข้อมูล |
| **Data Loss Prevention** | Exchange Online DLP | ป้องกันข้อมูลรั่วในอีเมล |
| | SharePoint/OneDrive DLP | ป้องกันข้อมูลรั่วในไฟล์ |
| | Teams DLP | ป้องกันข้อมูลรั่วใน Teams |
| | Endpoint DLP | ป้องกันข้อมูลรั่วที่อุปกรณ์ |
| | Power BI DLP | ป้องกันข้อมูลรั่วใน Power BI |
| **eDiscovery** | eDiscovery (Standard) | ค้นหาข้อมูลสำหรับคดีความ |
| | eDiscovery (Premium) | ค้นหาขั้นสูงพร้อม analytics |
| | Legal Hold | เก็บข้อมูลสำหรับคดี |
| | Review Sets | ชุดข้อมูลสำหรับตรวจสอบ |
| **Compliance** | Compliance Manager | จัดการข้อกำหนด compliance |
| | Insider Risk Management | ตรวจจับความเสี่ยงจากภายใน |
| | Communication Compliance | ตรวจสอบการสื่อสาร |
| | Information Barriers | กำแพงข้อมูลระหว่างแผนก |
| | Audit Logs | บันทึกการตรวจสอบ |
| | Data Lifecycle Management | จัดการวงจรชีวิตข้อมูล |

---

### 3️⃣ Microsoft 365 E5

**Microsoft 365 E5** เป็นชุดผลิตภัณฑ์ระดับสูงสุดที่รวม Office 365, Windows 11 Enterprise และ EMS E5 เข้าด้วยกัน

#### ฟีเจอร์หลัก (เพิ่มเติมจาก E3):

| หมวด | ฟีเจอร์ | รายละเอียด |
|------|---------|------------|
| **Advanced Identity** | Azure AD Premium P2 | Identity management ขั้นสูง |
| | Privileged Identity Management (PIM) | จัดการสิทธิ์พิเศษ |
| | Identity Protection | ป้องกันความเสี่ยงด้าน identity |
| | Risk-based Conditional Access | Conditional Access ตามความเสี่ยง |
| | Access Reviews | ทบทวนสิทธิ์การเข้าถึง |
| **Advanced Security** | Microsoft Defender for Office 365 Plan 2 | ป้องกันภัยคุกคามใน Office |
| | Microsoft Defender for Cloud Apps | ป้องกันภัยใน cloud apps |
| | Microsoft Defender for Identity | ป้องกันภัยใน on-premise identity |
| | Microsoft Defender for Endpoint Plan 2 | ป้องกันภัยที่ endpoint |
| | Microsoft Defender for Cloud | ป้องกันภัยใน cloud infrastructure |
| **Advanced Compliance** | Advanced eDiscovery | eDiscovery ขั้นสูง |
| | Advanced Audit | บันทึกการตรวจสอบขั้นสูง |
| | Communication Compliance | ตรวจสอบการสื่อสาร |
| | Information Barriers | กำแพงข้อมูล |
| **Advanced Analytics** | Microsoft 365 Defender | ศูนย์กลาง security |
| | Threat & Vulnerability Management | จัดการช่องโหว่ |
| | Attack Surface Reduction | ลดพื้นที่โจมตี |
| | Automated Investigation | สอบสวนอัตโนมัติ |

---

## 📋 ตารางเปรียบเทียบฟีเจอร์

### เปรียบเทียบแบบละเอียด

| ฟีเจอร์ | EMS E3 | IP&G (Purview) | M365 E5 |
|---------|:------:|:--------------:|:-------:|
| **Identity & Access Management** | | | |
| Azure AD Premium P1 | ✅ | ❌* | ✅ |
| Azure AD Premium P2 | ❌ | ❌* | ✅ |
| Multi-Factor Authentication | ✅ | ❌* | ✅ |
| Conditional Access | ✅ | ❌* | ✅ |
| Self-Service Password Reset | ✅ | ❌* | ✅ |
| Privileged Identity Management | ❌ | ❌* | ✅ |
| Identity Protection | ❌ | ❌* | ✅ |
| Risk-based Conditional Access | ❌ | ❌* | ✅ |
| **Endpoint Management** | | | |
| Microsoft Intune Plan 1 | ✅ | ❌ | ✅ |
| Mobile Device Management | ✅ | ❌ | ✅ |
| Mobile Application Management | ✅ | ❌ | ✅ |
| Windows Autopilot | ✅ | ❌ | ✅ |
| Endpoint Analytics | ✅ | ❌ | ✅ |
| Remote Help | ❌ | ❌ | ✅ |
| **Information Protection** | | | |
| Azure Information Protection P1 | ✅ | ❌** | ✅ |
| Azure Information Protection P2 | ❌ | ✅ | ✅ |
| Sensitivity Labels | ✅ (Manual) | ✅ (Auto) | ✅ (Auto) |
| Auto-labeling ด้วย AI/ML | ❌ | ✅ | ✅ |
| Double Key Encryption | ❌ | ✅ | ✅ |
| Customer Key | ❌ | ✅ | ✅ |
| **Data Loss Prevention** | | | |
| Basic DLP | ❌ | ✅ | ✅ |
| Advanced DLP | ❌ | ✅ | ✅ |
| Endpoint DLP | ❌ | ✅ | ✅ |
| Teams DLP | ❌ | ✅ | ✅ |
| Power BI DLP | ❌ | ✅ | ✅ |
| **eDiscovery** | | | |
| eDiscovery (Standard) | ❌ | ✅ | ✅ |
| eDiscovery (Premium) | ❌ | ✅ | ✅ |
| Legal Hold | ❌ | ✅ | ✅ |
| Review Sets | ❌ | ✅ | ✅ |
| **Threat Protection** | | | |
| Defender for Office 365 Plan 1 | ❌ | ❌ | ✅ |
| Defender for Office 365 Plan 2 | ❌ | ❌ | ✅ |
| Defender for Cloud Apps | ❌ | ❌ | ✅ |
| Defender for Identity | ❌ | ❌ | ✅ |
| Defender for Endpoint Plan 2 | ❌ | ❌ | ✅ |
| **Compliance** | | | |
| Compliance Manager | ❌ | ✅ | ✅ |
| Insider Risk Management | ❌ | ✅ | ✅ |
| Communication Compliance | ❌ | ✅ | ✅ |
| Information Barriers | ❌ | ✅ | ✅ |
| Advanced Audit | ❌ | ✅ | ✅ |
| Data Lifecycle Management | ❌ | ✅ | ✅ |

**หมายเหตุ:**
- \* IP&G ต้องมีฐาน M365 (E3 หรือ E5) เพื่อใช้งาน
- \** EMS E3 มีเฉพาะ AIP P1, IP&G มี AIP P2 (advanced features)

---

## 💼 Use Cases

### 🔵 EMS E3 Use Cases

#### เหมาะสมสำหรับ:

**1. องค์กรขนาดกลาง (SMEs)**
- จำนวนพนักงาน: 100 - 1,000 คน
- งบประมาณจำกัด
- ต้องการพื้นฐานด้าน mobility และ security

**2. BYOD (Bring Your Own Device) Environment**
- พนักงานใช้อุปกรณ์ส่วนตัวทำงาน
- ต้องการควบคุมการเข้าถึงข้อมูล
- ต้องการแยกข้อมูลส่วนตัวและงาน

**3. Remote Work พื้นฐาน**
- พนักงานทำงานจากบ้าน
- ต้องการ MFA สำหรับความปลอดภัย
- ต้องการ Conditional Access พื้นฐาน

**4. Multi-platform Environment**
- ใช้อุปกรณ์หลากหลาย (Windows, iOS, Android)
- ต้องการ MDM/MAM ครบทุกแพลตฟอร์ม
- ต้องการจัดการแอปพลิเคชัน

#### ตัวอย่างสถานการณ์จริง:

**Case Study 1: บริษัทเทคโนโลยี 500 คน**
- **ความท้าทาย:** พนักงานใช้อุปกรณ์ส่วนตัวทำงาน
- **โซลูชัน:** EMS E3 + Intune MAM
- **ผลลัพธ์:** 
  - สามารถควบคุมข้อมูลบริษัทบนอุปกรณ์ส่วนตัว
  - ลดความเสี่ยงข้อมูลรั่วไหล 80%
  - พนักงานพึงพอใจเพราะไม่ต้องลงทะเบียนอุปกรณ์

**Case Study 2: โรงพยาบาล 300 คน**
- **ความท้าทาย:** ต้องป้องกันข้อมูลผู้ป่วย (PDPA)
- **โซลูชัน:** EMS E3 + Conditional Access
- **ผลลัพธ์:**
  - ควบคุมการเข้าถึงข้อมูลเฉพาะเครือข่ายโรงพยาบาล
  - ใช้ MFA สำหรับเข้าถึงข้อมูลสำคัญ
  - ผ่านการตรวจสอบ PDPA

---

### 🟢 IP&G (Purview) Use Cases

#### เหมาะสมสำหรับ:

**1. Regulated Industries**
- การเงินและการธนาคาร
- สาธารณสุข
- ประกันภัย
- พลังงาน

**2. องค์กรที่มีข้อกำหนด Compliance สูง**
- PDPA (ประเทศไทย)
- GDPR (ยุโรป)
- HIPAA (สหรัฐอเมริกา)
- SOX, PCI-DSS

**3. องค์กรที่ต้องการ Data Protection ขั้นสูง**
- มีข้อมูลสำคัญจำนวนมาก
- ต้องการป้องกันข้อมูลรั่วไหล
- ต้องการ auto-classification

**4. องค์กรที่มี Legal Requirements**
- ต้องทำ eDiscovery บ่อย
- มีคดีความประจำ
- ต้องเก็บข้อมูลสำหรับ legal hold

#### ตัวอย่างสถานการณ์จริง:

**Case Study 1: ธนาคารพาณิชย์ 2,000 คน**
- **ความท้าทาย:** ต้องปฏิบัติตาม PDPA และ BOT regulations
- **โซลูชัน:** M365 E3 + IP&G
- **ผลลัพธ์:**
  - Auto-label ข้อมูลลูกค้าอัตโนมัติ
  - DLP ป้องกันข้อมูลรั่วไหลทุกช่องทาง
  - ผ่านการตรวจสอบจากธนาคารแห่งประเทศไทย

**Case Study 2: บริษัทกฎหมาย 200 คน**
- **ความท้าทาย:** ต้องทำ eDiscovery สำหรับคดีความ
- **โซลูชัน:** M365 E3 + IP&G (eDiscovery Premium)
- **ผลลัพธ์:**
  - ลดเวลา eDiscovery จาก 2 สัปดาห์เหลือ 2 วัน
  - ค้นหาข้อมูลได้แม่นยำ 95%
  - ประหยัดค่าใช้จ่ายด้านกฎหมาย 60%

**Case Study 3: โรงพยาบาลมหาวิทยาลัย 5,000 คน**
- **ความท้าทาย:** ต้องป้องกันข้อมูลผู้ป่วย (HIPAA)
- **โซลูชัน:** M365 E3 + IP&G
- **ผลลัพธ์:**
  - Endpoint DLP ป้องกันข้อมูลรั่วที่อุปกรณ์
  - Insider Risk Management ตรวจจับพฤติกรรมเสี่ยง
  - ผ่านการตรวจสอบ HIPAA

---

### 🟣 M365 E5 Use Cases

#### เหมาะสมสำหรับ:

**1. Large Enterprise**
- จำนวนพนักงาน: 2,000+ คน
- งบประมาณเพียงพอ
- ต้องการ security แบบครบวงจร

**2. Zero Trust Security Model**
- ต้องการ verify ทุกการเข้าถึง
- ต้องการ least privilege access
- ต้องการ assume breach mentality

**3. องค์กรที่มี Advanced Threat Landscape**
- เป็นเป้าหมายของ cyber attacks
- มีข้อมูลสำคัญระดับชาติ
- ต้องการ advanced threat protection

**4. องค์กรที่ต้องการ Unified Security Platform**
- ต้องการ single pane of glass
- ต้องการ automated response
- ต้องการ integrated analytics

#### ตัวอย่างสถานการณ์จริง:

**Case Study 1: ธนาคารขนาดใหญ่ 10,000 คน**
- **ความท้าทาย:** เป็นเป้าหมายของ APT attacks
- **โซลูชัน:** M365 E5
- **ผลลัพธ์:**
  - Microsoft 365 Defender ตรวจจับภัยคุกคามแบบ end-to-end
  - PIM ควบคุมสิทธิ์ admin
  - ลดเวลาตอบสนองต่อ incident จาก 24 ชม.เหลือ 2 ชม.

**Case Study 2: บริษัทพลังงาน 5,000 คน**
- **ความท้าทาย:** ต้องป้องกันข้อมูลสำคัญและ OT systems
- **โซลูชัน:** M365 E5
- **ผลลัพธ์:**
  - Defender for Cloud Apps ควบคุม cloud access
  - Identity Protection ตรวจจับ compromised accounts
  - ผ่านการตรวจสอบ NERC CIP

**Case Study 3: หน่วยงานรัฐบาล 8,000 คน**
- **ความท้าทาย:** ต้องปฏิบัติตามมาตรฐานความปลอดภัยระดับสูง
- **โซลูชัน:** M365 E5
- **ผลลัพธ์:**
  - Advanced Audit บันทึกทุกกิจกรรม
  - Information Barriers ป้องกัน conflict of interest
  - ผ่านการตรวจสอบระดับชาติ

---

## 💰 วิเคราะห์ราคา

### ราคาต่อ User ต่อเดือน (USD)

| ผลิตภัณฑ์ | ราคา USD | ราคา THB (ประมาณ) | หมายเหตุ |
|-----------|:--------:|:-----------------:|----------|
| **EMS E3** | $10.60 | ~380 บาท | Standalone |
| **EMS E5** | $16.40 | ~590 บาท | Standalone |
| **Microsoft Purview Suite** | $12.00 | ~430 บาท | Add-on ต้องมีฐาน M365 |
| **Microsoft Intune Suite** | $10.00 | ~360 บาท | Add-on สำหรับ Intune |
| **Microsoft 365 E3** | $36.00 | ~1,295 บาท | รวม Office + Windows + EMS E3 |
| **Microsoft 365 E5** | $57.00 | ~2,050 บาท | รวมทุกอย่างครบถ้วน |

### ราคาต่อ User ต่อปี (USD)

| ผลิตภัณฑ์ | ราคา USD/ปี | ราคา THB/ปี (ประมาณ) | ประหยัด |
|-----------|:-----------:|:--------------------:|:-------:|
| **EMS E3** | $127.20 | ~4,560 บาท | - |
| **EMS E5** | $196.80 | ~7,080 บาท | - |
| **Microsoft Purview Suite** | $144.00 | ~5,160 บาท | - |
| **Microsoft 365 E3** | $432.00 | ~15,540 บาท | - |
| **Microsoft 365 E5** | $684.00 | ~24,600 บาท | - |

### การคำนวณต้นทุนรวม (TCO)

#### ตัวอย่าง: องค์กร 1,000 คน

| โซลูชัน | ราคา/User/เดือน | ต้นทุน/เดือน | ต้นทุน/ปี |
|---------|:---------------:|:------------:|:---------:|
| **Option 1: EMS E3** | $10.60 | $10,600 | $127,200 |
| **Option 2: M365 E3 + IP&G** | $48.00 | $48,000 | $576,000 |
| **Option 3: M365 E5** | $57.00 | $57,000 | $684,000 |

#### ตัวอย่าง: องค์กร 5,000 คน

| โซลูชัน | ราคา/User/เดือน | ต้นทุน/เดือน | ต้นทุน/ปี |
|---------|:---------------:|:------------:|:---------:|
| **Option 1: EMS E3** | $10.60 | $53,000 | $636,000 |
| **Option 2: M365 E3 + IP&G** | $48.00 | $240,000 | $2,880,000 |
| **Option 3: M365 E5** | $57.00 | $285,000 | $3,420,000 |

### Volume Licensing Discounts

| จำนวน Users | ส่วนลดโดยประมาณ |
|-------------|:----------------:|
| 250 - 999 | 5-10% |
| 1,000 - 4,999 | 10-15% |
| 5,000 - 9,999 | 15-20% |
| 10,000+ | 20-30% |

*หมายเหตุ: ส่วนลดขึ้นอยู่กับ Enterprise Agreement และ negotiation*

---

## 💡 คำแนะนำในการเลือก

### Decision Matrix

```
┌─────────────────────────────────────────────────────────────┐
│                    ขนาดองค์กร                                │
├─────────────┬───────────────┬───────────────┬───────────────┤
│             │ < 500 users   │ 500-2,000     │ > 2,000 users │
├─────────────┼───────────────┼───────────────┼───────────────┤
│ Budget      │ EMS E3        │ EMS E3 + IP&G │ M365 E5       │
│ Limited     │               │               │               │
├─────────────┼───────────────┼───────────────┼───────────────┤
│ Regulated   │ EMS E3 + IP&G │ M365 E3 + IP&G│ M365 E5       │
│ Industry    │               │               │               │
├─────────────┼───────────────┼───────────────┼───────────────┤
│ Advanced    │ M365 E3 + IP&G│ M365 E5       │ M365 E5       │
│ Security    │               │               │               │
└─────────────┴───────────────┴───────────────┴───────────────┘
```

### คำแนะนำตามสถานการณ์

#### 🎯 สถานการณ์ที่ 1: องค์กรขนาดเล็ก งบประมาณจำกัด

**คำแนะนำ:** เริ่มด้วย **EMS E3**

**เหตุผล:**
- ราคาประหยัดที่สุด
- ได้ฟีเจอร์พื้นฐานครบถ้วน
- สามารถอัพเกรดทีหลังได้

**ขั้นตอนการเริ่มต้น:**
1. ซื้อ EMS E3 licenses
2. ตั้งค่า Azure AD P1 และ Conditional Access
3. Deploy Intune สำหรับ MDM/MAM
4. ฝึกพนักงานใช้ MFA

---

#### 🎯 สถานการณ์ที่ 2: องค์กรในอุตสาหกรรมที่มีกฎระเบียบ

**คำแนะนำ:** **M365 E3 + IP&G** หรือ **M365 E5**

**เหตุผล:**
- ต้องการ compliance features ครบถ้วน
- ต้องการ DLP และ eDiscovery
- ต้องการ auto-classification

**ขั้นตอนการเริ่มต้น:**
1. ซื้อ M365 E3 licenses
2. เพิ่ม IP&G add-on
3. ตั้งค่า sensitivity labels และ auto-labeling
4. Configure DLP policies
5. ตั้งค่า compliance manager

---

#### 🎯 สถานการณ์ที่ 3: องค์กรขนาดใหญ่ ต้องการ Zero Trust

**คำแนะนำ:** **M365 E5**

**เหตุผล:**
- ได้ security features ครบถ้วน
- Unified platform ลดความซับซ้อน
- Advanced threat protection
- คุ้มค่ากว่าซื้อแยก

**ขั้นตอนการเริ่มต้น:**
1. ซื้อ M365 E5 licenses
2. Deploy Microsoft 365 Defender
3. ตั้งค่า PIM และ Identity Protection
4. Configure Zero Trust policies
5. Enable automated response

---

### Migration Path

```
Phase 1: Foundation
├── EMS E3
├── Basic MDM/MAM
├── Conditional Access
└── MFA

Phase 2: Compliance (ถ้าจำเป็น)
├── เพิ่ม IP&G
├── DLP & eDiscovery
├── Auto-labeling
└── Compliance Manager

Phase 3: Advanced Security (ถ้าจำเป็น)
├── อัพเกรดเป็น M365 E5
├── Microsoft 365 Defender
├── PIM & Identity Protection
└── Zero Trust Architecture
```

---

## 📝 สรุป

### ตารางสรุปการเลือก

| เกณฑ์ | EMS E3 | IP&G | M365 E5 |
|-------|:------:|:----:|:-------:|
| **ราคา** | 💰 ต่ำสุด | 💰💰 ปานกลาง | 💰💰💰 สูงสุด |
| **ความซับซ้อน** | ⭐ ต่ำ | ⭐⭐ ปานกลาง | ⭐⭐⭐ สูง |
| **ฟีเจอร์ Security** | พื้นฐาน | Compliance | ครบวงจร |
| **เหมาะกับ** | SMEs | Regulated | Enterprise |
| **ROI** | สูง (สำหรับพื้นฐาน) | สูง (สำหรับ compliance) | สูง (สำหรับ security) |

### ข้อควรพิจารณา

#### ✅ ข้อดีของ EMS E3
- ราคาประหยัด
- ง่ายต่อการ deploy และ manage
- ได้ฟีเจอร์พื้นฐานครบถ้วน
- เหมาะกับองค์กรขนาดเล็ก-กลาง

#### ❌ ข้อจำกัดของ EMS E3
- ไม่มี advanced compliance features
- ไม่มี advanced threat protection
- ไม่มี auto-classification
- ต้องซื้อเพิ่มถ้าต้องการ IP&G

#### ✅ ข้อดีของ IP&G
- Compliance features ครบถ้วน
- Auto-classification ด้วย AI
- eDiscovery ขั้นสูง
- เหมาะกับ regulated industries

#### ❌ ข้อจำกัดของ IP&G
- ต้องมีฐาน M365
- ไม่มี endpoint management
- ไม่มี advanced threat protection
- ราคาเพิ่มจาก M365 base

#### ✅ ข้อดีของ M365 E5
- ได้ทุกอย่างครบถ้วน
- Unified platform
- Advanced security และ compliance
- คุ้มค่าสำหรับองค์กรใหญ่

#### ❌ ข้อจำกัดของ M365 E5
- ราคาสูงที่สุด
- ซับซ้อนในการ deploy
- อาจมีฟีเจอร์ที่ไม่ได้ใช้
- ต้องมีทีม IT ที่แข็งแกร่ง

### คำแนะนำสุดท้าย

1. **เริ่มต้นด้วย EMS E3** ถ้าเป็นองค์กรขนาดเล็กและต้องการพื้นฐาน
2. **เพิ่ม IP&G** ถ้ามี requirements ด้าน compliance
3. **อัพเกรดเป็น M365 E5** ถ้าเป็นองค์กรใหญ่และต้องการ security ครบวงจร
4. **ปรึกษา Microsoft Partner** เพื่อประเมินความต้องการที่แท้จริง
5. **ทำ Proof of Concept** ก่อนตัดสินใจซื้อ

---

## 📞 ติดต่อสอบถาม

หากมีคำถามหรือต้องการข้อมูลเพิ่มเติม สามารถติดต่อได้ดังนี้:

- **Microsoft Thailand:** 02-029-9000
- **Microsoft Licensing:** [microsoft.com/licensing](https://microsoft.com/licensing)
- **Microsoft Partners:** [partner.microsoft.com](https://partner.microsoft.com)

---

## 📚 เอกสารอ้างอิง

1. Microsoft 365 Licensing Guide
2. Microsoft Purview Documentation
3. Enterprise Mobility + Security Documentation
4. Microsoft 365 Security and Compliance Center

---

**จัดทำโดย:** AI Assistant  
**วันที่:** 24 มิถุนายน 2026  
**เวอร์ชัน:** 1.0

---

*เอกสารฉบับนี้เป็นข้อมูลทั่วไป ควรตรวจสอบราคาและฟีเจอร์ล่าสุดที่เว็บไซต์ของ Microsoft ก่อนตัดสินใจซื้อ*
