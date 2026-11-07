.class public Lorg/apache/tools/ant/types/Commandline$Argument;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Commandline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Commandline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Argument"
.end annotation


# instance fields
.field private parts:[Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const-string v0, ""

    .line 101
    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/apache/tools/ant/types/Commandline$Argument;)V
    .locals 1

    .line 189
    iget-object v0, p1, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    .line 190
    iget-object v0, p1, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    .line 191
    iget-object p1, p1, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    return-void
.end method

.method public getParts()[Ljava/lang/String;
    .locals 5

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 200
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    return-void
.end method

.method public setLine(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/types/Commandline;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    return-void
.end method

.method public setPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 133
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    return-void
.end method

.method public setPathref(Lorg/apache/tools/ant/types/Reference;)V
    .locals 2

    .line 144
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline$Argument;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 145
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 146
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 167
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 178
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->suffix:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 110
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline$Argument;->parts:[Ljava/lang/String;

    return-void
.end method
