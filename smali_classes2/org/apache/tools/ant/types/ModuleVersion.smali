.class public Lorg/apache/tools/ant/types/ModuleVersion;
.super Ljava/lang/Object;
.source "ModuleVersion.java"


# instance fields
.field private build:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private preRelease:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuild()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPreRelease()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    return-object v0
.end method

.method public setBuild(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Version number cannot be null."

    .line 60
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x2d

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version number cannot contain \'-\' or \'+\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreRelease(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x2b

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version\'s pre-release cannot contain \'+\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    return-void
.end method

.method public toModuleVersionString()Ljava/lang/String;
    .locals 4

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x2d

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x2b

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Version number cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->preRelease:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", build="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/ModuleVersion;->build:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
