.class Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;
.super Lorg/apache/tools/ant/AntTypeDefinition;
.source "MacroDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAntTypeDefinition"
.end annotation


# instance fields
.field private macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/MacroDef;)V
    .locals 0

    .line 774
    invoke-direct {p0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 775
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 2

    .line 786
    invoke-super {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 790
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->setMacroDef(Lorg/apache/tools/ant/taskdefs/MacroDef;)V

    return-object p1
.end method

.method public sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .locals 0

    .line 803
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 806
    :cond_0
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;

    .line 807
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->sameDefinition(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .locals 0

    .line 820
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 823
    :cond_0
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;

    .line 824
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->similar(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
