.class Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;
.super Ljava/lang/Object;
.source "LibraryDisplayer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displaySpecification(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)V
    .locals 3

    .line 135
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSections()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sections:  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 138
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    .line 139
    invoke-static {v2, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getSpecifications(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecifications(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 125
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private printLine(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 108
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method


# virtual methods
.method displayLibrary(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 42
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object v0

    .line 43
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->displayLibrary(Ljava/io/File;Ljava/util/jar/Manifest;)V

    return-void
.end method

.method displayLibrary(Ljava/io/File;Ljava/util/jar/Manifest;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 57
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    .line 58
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getRequired(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v1

    .line 59
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getOptions(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v2

    .line 60
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->getSpecifications(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    move-result-object p2

    .line 62
    array-length v3, v0

    if-nez v3, :cond_0

    array-length v3, v1

    if-nez v3, :cond_0

    array-length v3, v2

    if-nez v3, :cond_0

    array-length v3, p2

    if-nez v3, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 69
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->printLine(I)V

    .line 70
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->printLine(I)V

    .line 72
    array-length p1, v0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 73
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Extensions Supported By Library:"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    array-length p1, v0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    aget-object v5, v0, v4

    .line 75
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_1
    array-length p1, v1

    if-eqz p1, :cond_2

    .line 80
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Extensions Required By Library:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    array-length p1, v1

    move v0, v3

    :goto_1
    if-ge v0, p1, :cond_2

    aget-object v4, v1, v0

    .line 82
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_2
    array-length p1, v2

    if-eqz p1, :cond_3

    .line 87
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Extensions that will be used by Library if present:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    array-length p1, v2

    move v0, v3

    :goto_2
    if-ge v0, p1, :cond_3

    aget-object v1, v2, v0

    .line 89
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    :cond_3
    array-length p1, p2

    if-eqz p1, :cond_4

    .line 94
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Specifications Supported By Library:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    array-length p1, p2

    :goto_3
    if-ge v3, p1, :cond_4

    aget-object v0, p2, v3

    .line 96
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->displaySpecification(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
