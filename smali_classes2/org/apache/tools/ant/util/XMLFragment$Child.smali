.class public Lorg/apache/tools/ant/util/XMLFragment$Child;
.super Ljava/lang/Object;
.source "XMLFragment.java"

# interfaces
.implements Lorg/apache/tools/ant/DynamicConfiguratorNS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/XMLFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Child"
.end annotation


# instance fields
.field private e:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lorg/apache/tools/ant/util/XMLFragment;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/util/XMLFragment;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->this$0:Lorg/apache/tools/ant/util/XMLFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->e:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->this$0:Lorg/apache/tools/ant/util/XMLFragment;

    iget-object v1, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->e:Lorg/w3c/dom/Element;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/util/XMLFragment;->access$000(Lorg/apache/tools/ant/util/XMLFragment;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    return-void
.end method

.method public createDynamicElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object p1, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->this$0:Lorg/apache/tools/ant/util/XMLFragment;

    invoke-static {p1}, Lorg/apache/tools/ant/util/XMLFragment;->access$100(Lorg/apache/tools/ant/util/XMLFragment;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    .line 151
    :cond_0
    iget-object p2, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->this$0:Lorg/apache/tools/ant/util/XMLFragment;

    invoke-static {p2}, Lorg/apache/tools/ant/util/XMLFragment;->access$100(Lorg/apache/tools/ant/util/XMLFragment;)Lorg/w3c/dom/Document;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 153
    :goto_0
    iget-object p2, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->e:Lorg/w3c/dom/Element;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 154
    new-instance p2, Lorg/apache/tools/ant/util/XMLFragment$Child;

    iget-object p3, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->this$0:Lorg/apache/tools/ant/util/XMLFragment;

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/util/XMLFragment$Child;-><init>(Lorg/apache/tools/ant/util/XMLFragment;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->e:Lorg/w3c/dom/Element;

    invoke-interface {p1, p2, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p2, p0, Lorg/apache/tools/ant/util/XMLFragment$Child;->e:Lorg/w3c/dom/Element;

    invoke-interface {p2, p1, p3, p4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
