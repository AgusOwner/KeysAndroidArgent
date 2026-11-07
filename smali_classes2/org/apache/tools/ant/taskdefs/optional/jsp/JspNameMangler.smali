.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;
.super Ljava/lang/Object;
.source "JspNameMangler.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;


# static fields
.field public static final keywords:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    const-string v0, "assert"

    const-string v1, "abstract"

    const-string v2, "boolean"

    const-string v3, "break"

    const-string v4, "byte"

    const-string v5, "case"

    const-string v6, "catch"

    const-string v7, "char"

    const-string v8, "class"

    const-string v9, "const"

    const-string v10, "continue"

    const-string v11, "default"

    const-string v12, "do"

    const-string v13, "double"

    const-string v14, "else"

    const-string v15, "extends"

    const-string v16, "final"

    const-string v17, "finally"

    const-string v18, "float"

    const-string v19, "for"

    const-string v20, "goto"

    const-string v21, "if"

    const-string v22, "implements"

    const-string v23, "import"

    const-string v24, "instanceof"

    const-string v25, "int"

    const-string v26, "interface"

    const-string v27, "long"

    const-string v28, "native"

    const-string v29, "new"

    const-string v30, "package"

    const-string v31, "private"

    const-string v32, "protected"

    const-string v33, "public"

    const-string v34, "return"

    const-string v35, "short"

    const-string v36, "static"

    const-string v37, "super"

    const-string v38, "switch"

    const-string v39, "synchronized"

    const-string v40, "this"

    const-string v41, "throw"

    const-string v42, "throws"

    const-string v43, "transient"

    const-string v44, "try"

    const-string v45, "void"

    const-string v46, "volatile"

    const-string v47, "while"

    .line 36
    filled-new-array/range {v0 .. v47}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->keywords:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mangleChar(C)Ljava/lang/String;
    .locals 7

    .line 125
    sget-char v0, Ljava/io/File;->separatorChar:C

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2f

    .line 128
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    const/4 v1, 0x6

    new-array v2, v1, [C

    const/16 v3, 0x5f

    const/4 v4, 0x0

    aput-char v3, v2, v4

    const/4 v3, 0x1

    move v5, v3

    :goto_0
    if-gt v5, v0, :cond_1

    const/16 v6, 0x30

    .line 133
    aput-char v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    :goto_1
    if-ge v0, v1, :cond_2

    add-int/lit8 v3, v4, 0x1

    .line 137
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_1

    .line 139
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private mapJspToBaseName(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->stripExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 78
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->keywords:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 79
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 92
    :cond_2
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->mangleChar(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    :goto_3
    if-ge v2, v1, :cond_4

    aget-char v3, p1, v2

    .line 96
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 99
    :cond_3
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->mangleChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private stripExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".jsp"

    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/StringUtils;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public mapJspToJavaName(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->mapJspToBaseName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".java"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
