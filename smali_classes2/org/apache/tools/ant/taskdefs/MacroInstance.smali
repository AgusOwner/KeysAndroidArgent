.class public Lorg/apache/tools/ant/taskdefs/MacroInstance;
.super Lorg/apache/tools/ant/Task;
.source "MacroInstance.java"

# interfaces
.implements Lorg/apache/tools/ant/DynamicAttribute;
.implements Lorg/apache/tools/ant/TaskContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/MacroInstance$Element;
    }
.end annotation


# static fields
.field private static final STATE_EXPECT_BRACKET:I = 0x1

.field private static final STATE_EXPECT_NAME:I = 0x2

.field private static final STATE_NORMAL:I


# instance fields
.field private implicitTag:Ljava/lang/String;

.field private localAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nsElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;",
            ">;"
        }
    .end annotation
.end field

.field private presentElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/UnknownElement;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private unknownElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->implicitTag:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    return-void
.end method

.method private copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;
    .locals 6

    .line 253
    new-instance v0, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setNamespace(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 256
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setQName(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setTaskType(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setTaskName(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getBackTrace()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    .line 259
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 261
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    if-nez v1, :cond_1

    .line 262
    new-instance v1, Lorg/apache/tools/ant/Target;

    invoke-direct {v1}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 263
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 264
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    goto :goto_1

    .line 266
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 268
    :goto_1
    new-instance v1, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 269
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getPolyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setPolyType(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v2

    .line 272
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-direct {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v1, v4, v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChildren()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 281
    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getProxy()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/UnknownElement;

    .line 282
    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getTaskType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 284
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_4
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getNsElements()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;

    if-eqz v4, :cond_c

    if-eqz p2, :cond_5

    goto/16 :goto_7

    .line 292
    :cond_5
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isImplicit()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_8

    .line 293
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isOptional()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 294
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 296
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Missing nested elements for implicit element %s"

    invoke-direct {p1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 298
    :cond_7
    :goto_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/Task;

    .line 299
    check-cast v3, Lorg/apache/tools/ant/UnknownElement;

    invoke-direct {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 301
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_5

    .line 304
    :cond_8
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    .line 305
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/UnknownElement;

    if-nez v2, :cond_a

    .line 307
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isOptional()Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_3

    .line 308
    :cond_9
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 310
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Required nested element %s missing"

    invoke-direct {p1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 315
    :cond_a
    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 317
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText(Ljava/lang/String;)V

    .line 319
    :cond_b
    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 321
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/UnknownElement;

    .line 322
    invoke-direct {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v3

    .line 323
    invoke-virtual {v3}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 324
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_6

    .line 289
    :cond_c
    :goto_7
    invoke-direct {p0, v2, p2}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 291
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto/16 :goto_3

    :cond_d
    return-object v0
.end method

.method private getNsElements()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    .line 102
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;

    .line 105
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isImplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->implicitTag:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    return-object v0
.end method

.method private macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 173
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move-object v6, v0

    move v4, v3

    move v5, v4

    :goto_0
    const-string v7, "@{"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v10, 0x40

    if-ge v4, v2, :cond_9

    aget-char v11, p1, v4

    if-eqz v5, :cond_7

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_1

    goto :goto_3

    :cond_1
    const/16 v8, 0x7d

    if-ne v11, v8, :cond_3

    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 208
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    .line 210
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move-object v6, v0

    goto :goto_2

    .line 216
    :cond_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v5, 0x7b

    if-ne v11, v5, :cond_5

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v8

    goto :goto_3

    :cond_5
    if-ne v11, v10, :cond_6

    .line 192
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 195
    :cond_6
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_7
    if-ne v11, v10, :cond_8

    move v5, v9

    goto :goto_3

    .line 183
    :cond_8
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    if-eq v5, v9, :cond_b

    if-eq v5, v8, :cond_a

    goto :goto_4

    .line 233
    :cond_a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 227
    :cond_b
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processTasks()V
    .locals 4

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->implicitTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Task;

    .line 128
    check-cast v1, Lorg/apache/tools/ant/UnknownElement;

    .line 130
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v2}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getNsElements()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 137
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Element %s already present"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 132
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "unsupported element %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    return-void
.end method

.method public createDynamicElement(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Not implemented any more"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute()V
    .locals 6

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    .line 341
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getNsElements()Ljava/util/Map;

    .line 342
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->processTasks()V

    .line 343
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    .line 344
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 345
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;

    .line 346
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->map:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v4, "description"

    .line 347
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getDescription()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    .line 351
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getDefault()Ljava/lang/String;

    move-result-object v3

    .line 352
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    .line 358
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 356
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "required attribute %s not set"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    const-string v1, "id"

    .line 361
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 364
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 365
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getDefault()Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getOptional()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    .line 367
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "required text missing"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    const-string v1, ""

    .line 369
    :cond_6
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    .line 371
    :cond_7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getTrim()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 372
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    .line 374
    :cond_8
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 375
    :cond_9
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    .line 376
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 378
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getTaskName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The \"%s\" macro does not support nested text data."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 380
    :cond_b
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 381
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown attribute"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    const-string v3, "s "

    goto :goto_3

    :cond_c
    const-string v3, " "

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getNestedTask()Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->init()V

    .line 388
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/property/LocalProperties;->get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lorg/apache/tools/ant/property/LocalProperties;->enterScope()V

    const/4 v2, 0x0

    .line 391
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->perform()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    .line 402
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    .line 403
    invoke-virtual {v1}, Lorg/apache/tools/ant/property/LocalProperties;->exitScope()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 393
    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getBackTrace()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 395
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    .line 394
    invoke-static {v0, v3}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 397
    :cond_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 398
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :goto_4
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    .line 402
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    .line 403
    invoke-virtual {v1}, Lorg/apache/tools/ant/property/LocalProperties;->exitScope()V

    .line 404
    throw v0
.end method

.method public getMacroDef()Lorg/apache/tools/ant/taskdefs/MacroDef;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    return-object v0
.end method

.method public setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->map:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMacroDef(Lorg/apache/tools/ant/taskdefs/MacroDef;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    return-void
.end method
