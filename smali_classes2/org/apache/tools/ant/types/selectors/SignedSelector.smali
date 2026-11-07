.class public Lorg/apache/tools/ant/types/selectors/SignedSelector;
.super Lorg/apache/tools/ant/types/DataType;
.source "SignedSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# instance fields
.field private isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 31
    new-instance v0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    .line 53
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SignedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 57
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->setFile(Ljava/io/File;)V

    .line 58
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->eval()Z

    move-result p1

    return p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/SignedSelector;->isSigned:Lorg/apache/tools/ant/taskdefs/condition/IsSigned;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->setName(Ljava/lang/String;)V

    return-void
.end method
