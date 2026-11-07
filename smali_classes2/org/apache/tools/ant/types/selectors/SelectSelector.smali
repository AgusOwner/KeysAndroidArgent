.class public Lorg/apache/tools/ant/types/selectors/SelectSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;
.source "SelectSelector.java"


# instance fields
.field private ifCondition:Ljava/lang/Object;

.field private unlessCondition:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;-><init>()V

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/selectors/SelectSelector;
    .locals 1

    .line 69
    const-class v0, Lorg/apache/tools/ant/types/selectors/SelectSelector;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/SelectSelector;

    return-object v0
.end method


# virtual methods
.method public appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->getRef()Lorg/apache/tools/ant/types/selectors/SelectSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object p1

    return-object p1
.end method

.method public hasSelectors()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->getRef()Lorg/apache/tools/ant/types/selectors/SelectSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->hasSelectors()Z

    move-result v0

    return v0

    .line 81
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->hasSelectors()Z

    move-result v0

    return v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 215
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->validate()V

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->passesConditions()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public passesConditions()Z
    .locals 2

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/SelectSelector;->ifCondition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testIfCondition(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/SelectSelector;->unlessCondition:Ljava/lang/Object;

    .line 155
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testUnlessCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public selectorCount()I
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->getRef()Lorg/apache/tools/ant/types/selectors/SelectSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->selectorCount()I

    move-result v0

    return v0

    .line 93
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorCount()I

    move-result v0

    return v0
.end method

.method public selectorElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/ant/types/selectors/FileSelector;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->getRef()Lorg/apache/tools/ant/types/selectors/SelectSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public setIf(Ljava/lang/Object;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/SelectSelector;->ifCondition:Ljava/lang/Object;

    return-void
.end method

.method public setIf(Ljava/lang/String;)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->setIf(Ljava/lang/Object;)V

    return-void
.end method

.method public setUnless(Ljava/lang/Object;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/SelectSelector;->unlessCondition:Ljava/lang/Object;

    return-void
.end method

.method public setUnless(Ljava/lang/String;)V
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->setUnless(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->hasSelectors()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "{select"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/SelectSelector;->ifCondition:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v1, " if: "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/SelectSelector;->ifCondition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/SelectSelector;->unlessCondition:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v1, " unless: "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/SelectSelector;->unlessCondition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->selectorCount()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "Only one selector is allowed within the <selector> tag"

    .line 143
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/SelectSelector;->setError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
