.class public Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 875
    invoke-direct {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;-><init>()V

    return-void
.end method

.method private getTargetPrefix(Lorg/apache/tools/ant/helper/AntXMLContext;)Ljava/lang/String;
    .locals 3

    .line 1053
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 1061
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentProjectName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1062
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public onEndElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .locals 0

    .line 1100
    invoke-virtual {p3}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    return-void
.end method

.method public onStartChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1087
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$400()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object p1

    return-object p1
.end method

.method public onStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 905
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    const-string v5, "target"

    .line 906
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 907
    new-instance v6, Lorg/apache/tools/ant/Target;

    invoke-direct {v6}, Lorg/apache/tools/ant/Target;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/apache/tools/ant/ExtensionPoint;

    invoke-direct {v6}, Lorg/apache/tools/ant/ExtensionPoint;-><init>()V

    .line 908
    :goto_0
    invoke-virtual {v6, v4}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 909
    new-instance v7, Lorg/apache/tools/ant/Location;

    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/Target;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 910
    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/helper/AntXMLContext;->addTarget(Lorg/apache/tools/ant/Target;)V

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 912
    :goto_1
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v14

    const-string v15, "depends"

    const-string v8, "extensionOf"

    const/16 v17, 0x1

    if-ge v10, v14, :cond_d

    .line 913
    invoke-interface {v2, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 914
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v7, p1

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto/16 :goto_4

    :cond_1
    move-object/from16 v7, p1

    .line 917
    :cond_2
    invoke-interface {v2, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    .line 918
    invoke-interface {v2, v10}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v19

    const/16 v20, -0x1

    sparse-switch v19, :sswitch_data_0

    :goto_2
    move/from16 v7, v20

    goto :goto_3

    :sswitch_0
    const-string v8, "onMissingExtensionPoint"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_1
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_2
    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_3
    const-string v8, "if"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_4
    const-string v8, "id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x3

    goto :goto_3

    :sswitch_5
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_6
    const-string v8, "unless"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    move/from16 v7, v17

    goto :goto_3

    :sswitch_7
    const-string v8, "description"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 953
    new-instance v1, Lorg/xml/sax/SAXParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected attribute \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 947
    :pswitch_0
    :try_start_0
    invoke-static {v14}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 949
    :catch_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid onMissingExtensionPoint "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    move-object v9, v14

    goto :goto_4

    .line 921
    :pswitch_2
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    move-object v11, v14

    goto :goto_4

    .line 922
    :cond_b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "name attribute must not be empty"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 929
    :pswitch_3
    invoke-virtual {v6, v14}, Lorg/apache/tools/ant/Target;->setIf(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_4
    if-eqz v14, :cond_c

    .line 935
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 936
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v7, v14, v6}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_5
    move-object v12, v14

    goto :goto_4

    .line 932
    :pswitch_6
    invoke-virtual {v6, v14}, Lorg/apache/tools/ant/Target;->setUnless(Ljava/lang/String;)V

    goto :goto_4

    .line 940
    :pswitch_7
    invoke-virtual {v6, v14}, Lorg/apache/tools/ant/Target;->setDescription(Ljava/lang/String;)V

    :cond_c
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_d
    if-eqz v11, :cond_1d

    .line 965
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->isInIncludeMode()Z

    move-result v2

    if-eqz v2, :cond_e

    move/from16 v2, v17

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    .line 966
    :goto_5
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentPrefixSeparator()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_10

    .line 969
    invoke-direct {v0, v3}, Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;->getTargetPrefix(Lorg/apache/tools/ant/helper/AntXMLContext;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 977
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 971
    :cond_f
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "can\'t include build file "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", no as attribute has been given and the project tag doesn\'t specify a name attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/4 v10, 0x0

    .line 981
    :goto_6
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTargets()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1c

    .line 985
    invoke-virtual {v4}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v14

    .line 988
    invoke-virtual {v14, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 989
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    const-string v8, "Already defined in main or a previous import, ignore "

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x3

    invoke-virtual {v4, v8, v14}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    const/16 v17, 0x0

    goto :goto_7

    :cond_11
    move-object/from16 v16, v8

    .line 992
    invoke-virtual {v6, v11}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTargets()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-virtual {v4, v11, v6}, Lorg/apache/tools/ant/Project;->addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 998
    :goto_7
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    if-nez v2, :cond_12

    .line 1000
    invoke-virtual {v6, v9}, Lorg/apache/tools/ant/Target;->setDepends(Ljava/lang/String;)V

    goto :goto_9

    .line 1002
    :cond_12
    invoke-static {v9, v11, v15}, Lorg/apache/tools/ant/Target;->parseDepends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1003
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/tools/ant/Target;->addDependency(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    :goto_9
    if-nez v2, :cond_16

    .line 1007
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1008
    invoke-direct {v0, v3}, Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;->getTargetPrefix(Lorg/apache/tools/ant/helper/AntXMLContext;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v17, :cond_15

    .line 1014
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1015
    new-instance v1, Lorg/apache/tools/ant/Target;

    invoke-direct {v1, v6}, Lorg/apache/tools/ant/Target;-><init>(Lorg/apache/tools/ant/Target;)V

    goto :goto_a

    :cond_14
    new-instance v1, Lorg/apache/tools/ant/ExtensionPoint;

    invoke-direct {v1, v6}, Lorg/apache/tools/ant/ExtensionPoint;-><init>(Lorg/apache/tools/ant/Target;)V

    goto :goto_a

    :cond_15
    move-object v1, v6

    .line 1017
    :goto_a
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTargets()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    invoke-virtual {v4, v2, v1}, Lorg/apache/tools/ant/Project;->addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    :cond_16
    if-eqz v13, :cond_18

    if-eqz v12, :cond_17

    goto :goto_b

    .line 1022
    :cond_17
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "onMissingExtensionPoint attribute cannot be specified unless extensionOf is specified"

    .line 1024
    invoke-virtual {v6}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_18
    :goto_b
    if-eqz v12, :cond_1b

    .line 1029
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "ant.projectHelper"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/ProjectHelper;

    move-object/from16 v2, v16

    .line 1030
    invoke-static {v12, v11, v2}, Lorg/apache/tools/ant/Target;->parseDepends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v13, :cond_19

    .line 1032
    sget-object v4, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->FAIL:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    move-object v13, v4

    .line 1036
    :cond_19
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->isInIncludeMode()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1040
    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v4

    .line 1041
    invoke-virtual {v6}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1042
    invoke-virtual {v13}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3, v5, v8, v9}, [Ljava/lang/String;

    move-result-object v3

    .line 1040
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1044
    :cond_1a
    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v4

    .line 1045
    invoke-virtual {v6}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1046
    invoke-virtual {v13}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v5, v8}, [Ljava/lang/String;

    move-result-object v3

    .line 1044
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1b
    return-void

    .line 982
    :cond_1c
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate target \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-virtual {v6}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 959
    :cond_1d
    new-instance v1, Lorg/xml/sax/SAXParseException;

    const-string v2, "target element appears without a name attribute"

    .line 960
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_7
        -0x3218444e -> :sswitch_6
        -0xf58ed8a -> :sswitch_5
        0xd1b -> :sswitch_4
        0xd1d -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x5ca27787 -> :sswitch_1
        0x65c5eef8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
