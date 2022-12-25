import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AllInboxWidget extends StatefulWidget {
  const AllInboxWidget({Key? key}) : super(key: key);

  @override
  _AllInboxWidgetState createState() => _AllInboxWidgetState();
}

class _AllInboxWidgetState extends State<AllInboxWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'all_inbox'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          logFirebaseEvent('ALL_INBOX_FloatingActionButton_4rc4mgrv_');
          logFirebaseEvent('FloatingActionButton_navigate_to');

          context.pushNamed('addChat');
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            pinned: false,
            floating: true,
            snap: false,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Text(
              'All Chats',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          )
        ],
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                child: StreamBuilder<List<ChatsRecord>>(
                  stream: queryChatsRecord(
                    queryBuilder: (chatsRecord) => chatsRecord
                        .where('users', arrayContains: currentUserReference)
                        .orderBy('last_message_time', descending: true),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: SpinKitFadingFour(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 50,
                          ),
                        ),
                      );
                    }
                    List<ChatsRecord> listViewChatsRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewChatsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewChatsRecord =
                            listViewChatsRecordList[listViewIndex];
                        return StreamBuilder<FFChatInfo>(
                          stream: FFChatManager.instance
                              .getChatInfo(chatRecord: listViewChatsRecord),
                          builder: (context, snapshot) {
                            final chatInfo = snapshot.data ??
                                FFChatInfo(listViewChatsRecord);
                            return FFChatPreview(
                              onTap: () => context.pushNamed(
                                'inbox_page',
                                queryParams: {
                                  'chatUser': serializeParam(
                                    chatInfo.otherUsers.length == 1
                                        ? chatInfo.otherUsersList.first
                                        : null,
                                    ParamType.Document,
                                  ),
                                  'chatRef': serializeParam(
                                    chatInfo.chatRecord.reference,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'chatUser': chatInfo.otherUsers.length == 1
                                      ? chatInfo.otherUsersList.first
                                      : null,
                                },
                              ),
                              lastChatText: chatInfo.chatPreviewMessage(),
                              lastChatTime: listViewChatsRecord.lastMessageTime,
                              seen: listViewChatsRecord.lastMessageSeenBy!
                                  .contains(currentUserReference),
                              title: chatInfo.chatPreviewTitle(),
                              userProfilePic: chatInfo.chatPreviewPic(),
                              color: Color(0xFFEEF0F5),
                              unreadColor: Colors.blue,
                              titleTextStyle: GoogleFonts.getFont(
                                'DM Sans',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              dateTextStyle: GoogleFonts.getFont(
                                'DM Sans',
                                color: Color(0x73000000),
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                              previewTextStyle: GoogleFonts.getFont(
                                'DM Sans',
                                color: Color(0x73000000),
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                              borderRadius: BorderRadius.circular(0),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
