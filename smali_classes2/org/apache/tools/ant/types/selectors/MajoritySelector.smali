.class public Lorg/apache/tools/ant/types/selectors/MajoritySelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;
.source "MajoritySelector.java"


# instance fields
.field private allowtie:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->allowtie:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 5

    .line 75
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->validate()V

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 80
    invoke-interface {v4, p1, p2, p3}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v2, v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-le v3, v2, :cond_3

    return v1

    .line 93
    :cond_3
    iget-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->allowtie:Z

    return p1
.end method

.method public setAllowtie(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->allowtie:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MajoritySelector;->hasSelectors()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{majorityselect: "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
