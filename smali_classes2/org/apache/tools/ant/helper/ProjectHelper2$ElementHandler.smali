.class public Lorg/apache/tools/ant/helper/ProjectHelper2$ElementHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1112
    invoke-direct {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CIILorg/apache/tools/ant/helper/AntXMLContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1223
    invoke-virtual {p4}, Lorg/apache/tools/ant/helper/AntXMLContext;->currentWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object p4

    .line 1224
    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText([CII)V

    return-void
.end method

.method public onEndElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .locals 0

    .line 1260
    invoke-virtual {p3}, Lorg/apache/tools/ant/helper/AntXMLContext;->popWrapper()V

    return-void
.end method

.method public onStartChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1247
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$400()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object p1

    return-object p1
.end method

.method public onStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->currentWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getProxy()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1145
    :goto_0
    new-instance v2, Lorg/apache/tools/ant/UnknownElement;

    invoke-direct {v2, p2}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1147
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/UnknownElement;->setNamespace(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v2, p3}, Lorg/apache/tools/ant/UnknownElement;->setQName(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/UnknownElement;->setTaskType(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v2, p3}, Lorg/apache/tools/ant/UnknownElement;->setTaskName(Ljava/lang/String;)V

    .line 1152
    new-instance p2, Lorg/apache/tools/ant/Location;

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object p3

    invoke-interface {p3}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p3

    .line 1153
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v4

    invoke-interface {v4}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v4

    invoke-direct {p2, p3, v3, v4}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 1154
    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/UnknownElement;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 1155
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTarget()Lorg/apache/tools/ant/Target;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    if-eqz v1, :cond_1

    .line 1159
    check-cast v1, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_1

    .line 1162
    :cond_1
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTarget()Lorg/apache/tools/ant/Target;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/Target;->addTask(Lorg/apache/tools/ant/Task;)V

    .line 1165
    :goto_1
    invoke-virtual {p5, v2, p4}, Lorg/apache/tools/ant/helper/AntXMLContext;->configureId(Ljava/lang/Object;Lorg/xml/sax/Attributes;)V

    .line 1170
    new-instance p2, Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    move v1, p3

    .line 1172
    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1173
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 1174
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    if-eqz v3, :cond_2

    .line 1175
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    :cond_2
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ant-type"

    .line 1183
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "antlib:org.apache.tools.ant"

    .line 1184
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1185
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1187
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 1189
    invoke-virtual {v5, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1190
    invoke-virtual {p5, v3}, Lorg/apache/tools/ant/helper/AntXMLContext;->getPrefixMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 1196
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {v4, v2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1192
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to find XML NS prefix \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    move-object v2, v6

    .line 1199
    :cond_6
    invoke-virtual {p2, v2, v5}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 1202
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 1204
    :cond_8
    invoke-virtual {p5, p2}, Lorg/apache/tools/ant/helper/AntXMLContext;->pushWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    return-void
.end method
