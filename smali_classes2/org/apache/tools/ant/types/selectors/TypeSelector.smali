.class public Lorg/apache/tools/ant/types/selectors/TypeSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "TypeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;
    }
.end annotation


# static fields
.field public static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/TypeSelector;->validate()V

    .line 103
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    const-string p2, "dir"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    const-string p2, "file"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 5

    .line 61
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    if-eqz p1, :cond_1

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 64
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    new-instance v3, Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;-><init>()V

    .line 67
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;->setValue(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/TypeSelector;->setType(Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;)V

    goto :goto_1

    .line 70
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid parameter "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/TypeSelector;->setError(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setType(Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;)V
    .locals 0

    .line 50
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{typeselector type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TypeSelector;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "The type attribute is required"

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/TypeSelector;->setError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
