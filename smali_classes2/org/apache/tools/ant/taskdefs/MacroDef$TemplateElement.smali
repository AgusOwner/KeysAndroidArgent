.class public Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;
.super Ljava/lang/Object;
.source "MacroDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateElement"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private implicit:Z

.field private name:Ljava/lang/String;

.field private optional:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    .line 573
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 668
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 671
    :cond_1
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;

    .line 672
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    .line 673
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    iget-boolean v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    iget-boolean p1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 683
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 684
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isImplicit()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    return v0
.end method

.method public isOptional()Z
    .locals 1

    .line 635
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->description:Ljava/lang/String;

    return-void
.end method

.method public setImplicit(Z)V
    .locals 0

    .line 645
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->implicit:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 581
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->name:Ljava/lang/String;

    return-void

    .line 582
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Illegal name [%s] for macro element"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setOptional(Z)V
    .locals 0

    .line 626
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->optional:Z

    return-void
.end method
